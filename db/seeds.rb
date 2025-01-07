Article.delete_all
# esse arquivo serve para testes de popular o banco de dados, feito com o comando 'db:seed'
user = User.first

text = "Lorem ipsum odor amet, consectetuer adipiscing elit. Malesuada integer sollicitudin semper rutrum tristique commodo pulvinar. Tortor adipiscing habitant, vestibulum dictumst habitant ante vehicula laoreet. Potenti velit malesuada, condimentum maximus molestie pretium. Aliquam id lectus ornare himenaeos commodo. Neque purus bibendum netus rutrum phasellus dignissim."

p 'iniciando...'

    Category.all.each do | category |
        30.times do 
            Article.create!(
                title: "Article #{rand(10_000)}",
                body: text,
                category_id: category.id,
                user_id: user.id,
                created_at: rand(365).days.ago
            )
        end                     
    end

p 'finalizado!'