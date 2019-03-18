class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :user, presence: true
  validates :title, presence:true, length: {minimum:1}

end
