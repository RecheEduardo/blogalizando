module ApplicationHelper
    def render_if(condition, template, record)
        # Apenas será renderizado o componente caso a condição seja verdadeira
        render(template, record) if condition 
    end
    # helpers para formatar dados
    def m_d_comma_y(date)
        l(date, format: ('%B %e, %Y')).capitalize
    end

    def sub_masked_email(string)
        string.gsub(/(\b\w{5})\w*(?=@)(.*)(?=\.\w{2,3}\b)/) do |match|
          "#{$1}*****@***"
        end
    end
end
