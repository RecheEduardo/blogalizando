require 'rails_helper'
RSpec.describe Article, type: :model do
    it "é válido com um título, corpo, categoria e usuário" do
      article = build(:article)
      expect(article).to be_valid
    end
end