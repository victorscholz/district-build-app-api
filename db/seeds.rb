# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative '../config/environment'
require 'rest-client'
require 'json'
require 'pry'

User.destroy_all
Building.destroy_all
VisitList.destroy_all

User.create(username: 'Cody.NYC', password_digest: 'pass')
puts 'user created'

building_data =
	RestClient.get('https://victorscholz.github.io/Data/open_data.geojson')
api_body = building_data.body
building_info = JSON.parse(api_body)

building_info['features'].each do |building|
	Building.create(
		# coordinates: building['the_geom']['coordinates'][0][0][0..4],
		borough: building['borough'],
		address: building['des_addres'],
		build_date: building['date_combo'],
		architect: building['arch_build'],
		developer: building['own_devel'],
		style: building['style_prim'],
		secondary_material: building['mat_sec'],
		primary_material: building['mat_prim'],
		original_use: building['use_orig'],
		build_type: building['build_type'],
		historical_district: building['hist_dist']
	)
end

puts 'buildings created'

VisitList.create(
	user_id: User.all.sample.id, building_id: Building.all.sample.id
)

puts 'Visit List created'

binding.pry

# 10.times do
# 	VisitList.create(
# 		user_id: User.all.sample.id, building_id: Building.all.sample.id
# 	)
# end
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

# file_data =
# 	File.read(
# 		'/Users/victorscholz/Development/code/mod4/mod4-project/back/district-build-app-api/db/open_data.geojson'
# 	)
# puts file_data

# data = RGeo::GeoJSON::Coder.new

# building = data.decode(file_data)

# puts building.to_json
