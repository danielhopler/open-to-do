require 'rails_helper'

RSpec.describe User, type: :model do
let(:my_user) { User.create!(email: "daniel@todo.com", password: "password") }

it {should have_many(:lists) }


#Shoulda user email tests
it { should validate_presence_of(:email)}
it { should validate_uniqueness_of(:email) }
it { should validate_length_of(:email).is_at_least(5) }

#Shoulda user password tests
it {should validate_presence_of(:password)}
it {should validate_length_of(:password).is_at_least(8)}
it {should have_secure_password}

end
