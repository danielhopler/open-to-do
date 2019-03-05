class Item < ApplicationRecord
  belongs_to :list

  validates :list, presence: true
  validates :name, presence: true, length: {minimum:1}
  
end
