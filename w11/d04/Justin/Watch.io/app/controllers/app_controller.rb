class AppController < ApplicationController
	# require 'uri'

	def index
		# encoded = URI.encode(params[:q])
		# binding.pry
	end

	def create
		# binding.pry
		encoded = URI.encode(params[:q1])
		render json: HTTParty.get("http://www.omdbapi.com/?t=" + encoded)
	end

end