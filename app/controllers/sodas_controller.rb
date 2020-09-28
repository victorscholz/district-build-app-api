# require 'soda/client'
# require 'net/http'
# require 'json'

class SodasController < ApplicationController
	def index
		building = Soda.run
		# byebug
		# render json: building
	end
end
