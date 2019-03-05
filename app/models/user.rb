class User < ApplicationRecord
	has_many :lists

	before_save { self.email = email.downcase if email.present?}

	validates :name, presence: true, length: {minimum: 3}
	validates :email,
						presence: true,
						uniqueness: true,
						length: {minimum:5, maximum: 250}

	validates :password, presence: true, length: { minimum: 8 }, if: -> {password_digest.nil?}
	validates :password, length: { minimum: 8 }, allow_blank: true



	has_secure_password
end
