require 'rails_helper'


RSpec.describe Comment, type: :model do
    it "é válido com um corpo, artigo e usuário" do
      comment = build(:comment)
      expect(comment).to be_valid
    end
  end