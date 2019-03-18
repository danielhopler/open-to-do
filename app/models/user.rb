class User < ApplicationRecord
	has_many :lists, dependent: :destroy

	validates :username,
						presence: true,
						uniqueness: { case_sensitive: false},
						length: {minimum:5, maximum: 250}

	validates :password, presence: true, length: { minimum: 8 }, if: -> {password_digest.nil?}
	validates :password, length: { minimum: 8 }, allow_blank: true



	has_secure_password
end
