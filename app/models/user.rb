class User < ApplicationRecord
	has_many :lists, dependent: :destroy

	validates :username,
						presence: true,
						length: {minimum:5, maximum: 100},
						uniqueness: { case_sensitive: false}

	validates :password, presence: true, length: { minimum: 8 }, if: -> {password_digest.nil?}
	validates :password, length: { minimum: 8 }, allow_blank: true



	has_secure_password
end
