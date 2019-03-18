require 'rails_helper'

RSpec.describe User, type: :model do
let(:my_user) { User.create!(username: "danielhopler", password: "password") }

it {should have_many(:lists) }


#Shoulda user email tests
it { should validate_presence_of(:username)}
it { should validate_uniqueness_of(:username) }
it { should validate_length_of(:user).is_at_least(5) }

#Shoulda user password tests
it {should validate_presence_of(:password)}
it {should validate_length_of(:password).is_at_least(8)}
it {should have_secure_password}

end
