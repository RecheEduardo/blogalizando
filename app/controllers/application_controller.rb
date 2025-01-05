class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  around_action :switch_locale

  # permite o uso da gem Pundit no projeto
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
  def after_sign_in_path_for(resource)
    root_path
  end
  
  def user_not_authorized(exception) # Método do pundit que checa autorizações de usuários
    policy_name = exception.policy.class.to_s.underscore
 
    #Config de translate do I18n aplicada na flash msg de erro do pundit
    flash[:alert] = t("#{policy_name}.#{exception.query}", scope: "pundit", default: :default)
    redirect_back_or_to(root_path)
  end

  # Configurações de I18n
  def default_url_options
    { locale: I18n.locale }
  end

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

end