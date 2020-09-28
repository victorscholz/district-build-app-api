# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'soda/client'
require 'json'
require 'pry'
require 'rgeo/geo_json'

# client =
# 	SODA::Client.new({ domain: 'data.cityofnewyork.us', app_token: 'slack' })

# results = client.get('x3ar-yjn2', { '$where' => "borough == 'BK'" })

# puts "Got #{results.length} results. Dumping first results:"

# results.each { |k, v| puts "#{k}: #{v}" }

# fetch data
# results.each do |f|
# 	datasets = JSON.parse(f)

# 	puts datasets.inspect
# 	binding.pry
# end

# trying to pull data from nyc api to seed building info into back end
# we are able to iterate through and pull each label/data type

file_data =
	File.read(
		'/Users/victorscholz/Development/code/mod4/mod4-project/back/district-build-app-api/db/open_data.geojson'
	)
# puts file_data

data = RGeo::GeoJSON::Coder.new

building = data.decode(file_data)

# puts building.to_json
