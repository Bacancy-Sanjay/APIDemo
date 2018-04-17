class Api::V1::BaseController < ApplicationController 
	skip_before_action :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' } 

	def authorization 
		auth = params[:Authorization] 
		if auth == "c673c7f8cdf29a51c3583b5b4d48ce32" 
			return true
		else
			render plain: 'Data not available'
		end 
	end 
end
