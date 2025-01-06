# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "é válido com um email e senha válidos" do
    user = build(:user)
    expect(user).to be_valid
  end
  
end