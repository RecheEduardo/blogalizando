module ApplicationHelper
    def render_if(condition, template, record)
        # Apenas será renderizado o componente caso a condição seja verdadeira
        render(template, record) if condition 
    end

    def m_d_comma_y(date)
        date.strftime('%B %e, %Y')   
    end

    def sub_masked_email(string)
        string.gsub(/(\b\w{4})\w*(?=@)(.*)(?=\.\w{2,3}\b)/) do |match|
            "#{$1}*****#{$2}***"
        end
    end
end
