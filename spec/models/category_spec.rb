require 'rails_helper'

# teste de category verificando se a criação dela é válida
RSpec.describe Category, type: :model do
    it "é válido com um nome" do
      category = build(:category)
      expect(category).to be_valid
    end
end