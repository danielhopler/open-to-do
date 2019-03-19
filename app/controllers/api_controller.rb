class ApiController < ApplicationController
	skip_before_action :verify_authenticity_token

	respond_to :json


	private

	def authenticated?
		authenticate_with_http_basic{|username, password| User.where( username: username, password: password).present? }
	end
end
