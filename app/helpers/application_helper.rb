module ApplicationHelper
    def render_if(condition, template, record)
        # Apenas será renderizado o componente caso a condição seja verdadeira
        render(template, record) if condition 
    end
end
