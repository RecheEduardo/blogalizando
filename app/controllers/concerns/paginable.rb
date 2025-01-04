module Paginable # Concern para modularizar a lógica de seleção da página atual
    protected

    def current_page
        (params[:page] || 1).to_i # Recebe: Página passada na URL pela gem Kaminari OU Página inicial da aplicação
    end
end