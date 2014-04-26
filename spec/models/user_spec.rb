require 'spec_helper'

describe User do

  subject(:user) { User.create(name: 'John Doe',
                               email: 'john@doe.com',
                               username: 'jdoe',
                               password: 'johndoe123',
                               password_confirmation: 'johndoe123')}
  describe ".new" do
    it "should create user with name, username, email" do
      expect(user.name).to eq('John Doe')
      expect(user.email).to eq('john@doe.com')
      expect(user.username).to eq('jdoe')
    end
  end

end
