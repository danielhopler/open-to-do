require 'rails_helper'

RSpec.describe List, type: :model do
  let(:my_user) { User.create!(username: "danielhopler", password: "password") }
  let(:my_list) { List.create!(title:"Test List", user: my_user) }
  let(:my_item) { Item.create!(name: "New To Do Item", list: my_list) }

  it {should have_many(:items) }
  it {should belong_to(:user)}

  it {should validate_presence_of(:title)}
  it {should validate_length_of(:title).is_at_least(1)}

  it {should validate_presence_of(:user)}


  describe "attributes" do
    it "has title and user attributes" do
      expect(my_list).to have_attributes(title: "Test List", user: my_user)
    end
  end
end
