class BuildingSerializer < ActiveModel::Serializer
	attributes :id,
	           :developer,
	           :build_type,
	           :architect,
	           :style,
	           :primary_material,
	           :secondary_material,
	           :build_date,
	           :original_use,
	           :borough,
	           :historical_district,
	           :address,
	           :coordinates
end
