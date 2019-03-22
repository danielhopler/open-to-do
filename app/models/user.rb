class User < ApplicationRecord
	has_many :lists, dependent: :destroy

	validates :username, length: {minimum: 3, maximum: 100}, presence: true, uniqueness: { case_sensitive: false }

	validates :password, presence: true, length: { minimum: 6 }

	validates :password, length: { minimum: 6 }, allow_blank: true



	
end
