# require 'csv'

# namespace :data do
# 	task prepare: :environment do
# 		# match header names to names in table
# 		headers = %w[
# 			coordinates
# 			borough
# 			address
# 			date_built
# 			architect
# 			developer
# 			primary_style
# 			primary_material
# 			use
# 			type
# 			historical_district
# 		]
# 		columns to be removed from CSV file
# 		set = [
# 			1,
# 			4,
# 			5,
# 			6,
# 			8,
# 			9,
# 			10,
# 			12,
# 			13,
# 			16,
# 			17,
# 			19,
# 			20,
# 			23,
# 			24,
# 			25,
# 			27,
# 			29,
# 			31,
# 			33,
# 			34
# 		]

# 		CSV.open('data.csv', 'w', wirte_headers: true, headers: headers) do |csv|

# 	end
# end
