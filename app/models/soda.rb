require 'soda/client'
require 'net/http'
# require 'json'

module Soda
	def self.run
		client =
			SODA::Client.new(
				{ domain: 'data.cityofnewyork.us', app_token: 'slack' }
			)

		results = client.get('x3ar-yjn2', { '$where' => "borough == 'BK'" })

		"Got #{results.length} results. Dumping first results:"
		byebug
		# hashie array
		# .body gives access
		# poop = results.map { |k, v| "#{k}: #{v}" }
	end
end
