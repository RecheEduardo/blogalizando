# spec/factories/users.rb
# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    email { "usario@exemplo123.com" }
    password { "senh@_forte_12345" }
    password_confirmation { "senh@_forte_12345" }
    admin { false } # usuário padrão

    after(:create) do |user| # callback de criação de article depois de user
      create(:article, user: user) # cria um artigo junto do usuário
    end
  end
end