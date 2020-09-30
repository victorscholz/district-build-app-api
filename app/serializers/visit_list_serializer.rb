class VisitListSerializer < ActiveModel::Serializer
	attributes :id, :user, :building

	def user
		{ user_id: self.object.user.id, username: self.object.user.username }
	end
	def building
		{
			building_id: self.object.building.id,
			developer: self.object.building.developer,
			build_type: self.object.building.build_type,
			architect: self.object.building.architect,
			style: self.object.building.style,
			primary_material: self.object.building.primary_material,
			secondary_material: self.object.building.secondary_material,
			build_date: self.object.building.build_date,
			original_use: self.object.building.original_use,
			borough: self.object.building.borough,
			historical_district: self.object.building.historical_district,
			address: self.object.building.address,
			coordinates: self.object.building.coordinates
		}
	end
end
