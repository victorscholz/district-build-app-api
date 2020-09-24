class BuildingSerializer < ActiveModel::Serializer
	attributes :id,
	           :borough,
	           :address,
	           :construction_date,
	           :architect,
	           :developer,
	           :style,
	           :material_1,
	           :material_2,
	           :use_type,
	           :build_type,
	           :notes,
	           :historical_district,
	           :building_lonlat
end
