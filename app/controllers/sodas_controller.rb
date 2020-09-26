# require 'soda/client'
# require 'net/http'
# require 'json'

class SodasController < ApplicationController
	def index
		poop = Soda.run
		# byebug
		# render json: poop
	end
end
