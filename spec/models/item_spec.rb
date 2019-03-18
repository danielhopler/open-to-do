require 'rails_helper'

RSpec.describe Item, type: :model do

  let(:my_user) { User.create!(username: "danielhopler", password: "password") }
  let(:my_list) { List.create!(title:"Test List", user: my_user) }
  let(:my_item) { Item.create!(name: "New To Do Item", list: my_list) }

  it {should belong_to(:list)}

  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:list)}

  describe "attributes" do
    it "it has name and list attributes" do
      expect(my_item).to have_attributes(name: "New To Do Item", list: my_list)
    end
  end

end
