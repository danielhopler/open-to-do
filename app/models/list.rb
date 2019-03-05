class List < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :user, presence: true
  validates :title, presence:true, length: {minimum:1}

end
