FactoryBot.define do
    factory :article do
      title { "Artigo teste" }
      body { "Esse é um artigo para testar!" }
      category
      user
    end
  end