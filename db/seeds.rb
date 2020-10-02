require_relative '../config/environment'
require 'rest-client'
require 'json'
require 'pry'

User.destroy_all
Building.destroy_all
VisitList.destroy_all

User.create(username: 'Cody.NYC', password_digest: 'pass')
puts 'user created'

binding.pry

building_data =
	RestClient.get('https://victorscholz.github.io/Data/open_data.geojson')
api_body = building_data.body
building_info = JSON.parse(api_body)

building_info.each do |building|
	Building.create(
		# coordinates: building['the_geom']['coordinates'][0][0][0..4],
		borough: building['borough'],
		bin: building['bin'],
		block: building['block'],
		lot: building['lot'],
		des_addres: building['des_addres'],
		circa: building['circa'],
		date_low: building['date_low'],
		date_high: building['date_high'],
		date_combo: building['date_combo'],
		alt_date_1: building['alt_date_1'],
		alt_date_2: building['alt_date_2'],
		arch_build: building['arch_build'],
		own_devel: building['own_devel'],
		alt_arch_1: building['alt_arch_1'],
		alt_arch_2: building['alt_arch_2'],
		style_prim: building['style_prim'],
		style_sec: building['style_sec'],
		style_oth: building['style_oth'],
		mat_sec: building['mat_sec'],
		mat_prim: building['mat_prim'],
		mat_third: building['mat_third'],
		mat_four: building['mat_four'],
		mat_other: building['mat_other'],
		use_orig: building['use_orig'],
		use_other: building['use_other'],
		build_type: building['build_type'],
		build_oth: building['build_oth'],
		notes: building['notes'],
		build_nme: building['build_nme'],
		hist_dist: building['hist_dist'],
		lm_orig: building['lm_orig'],
		lm_new: building['lm_new']
	)
end

puts 'buildings created'

VisitList.create(
	user_id: User.all.sample.id, building_id: Building.all.sample.id
)

puts 'Visit List created'