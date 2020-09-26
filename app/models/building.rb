class Building < ApplicationRecord
	has_many :visit_lists
	has_many :users, through: :visit_lists

	# scope :within,
	#     lambda { |latitude, longitude, distance_in_mile = 1|
	# 		where("ST_Distance(coordinates, 'POINT(%f %f)') < %d" 
	# 		% [longitude, latitude, distance_in_mile * 1609.34]) # approx
	#     }
end