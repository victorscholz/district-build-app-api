class Building < ApplicationRecord
    scope :within, -> (latitude, longitude, distance_in_mile = 1) {
        where(%{
            ST_Distance(building_lonlat, 'POINT(%f %f)') < %d
        } % [longitude, latitude, distance_in_mile * 1609.34]) # approx
    }
end
