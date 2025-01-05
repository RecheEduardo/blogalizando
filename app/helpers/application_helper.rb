module ApplicationHelper
    def render_if(condition, template, record)
        # Apenas será renderizado o componente caso a condição seja verdadeira
        render(template, record) if condition 
    end

    def sub_masked_email(string)
        string.gsub(/(?<=.{2}).*@.*(?=\S{2})/, '****@****') # Anonimização de usuário
    end
end
