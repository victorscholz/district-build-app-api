class VisitListSerializer < ActiveModel::Serializer
	attributes :id, :user_id, :building_id

	# def user
	# 	{ user_id: self.object.user.id, username: self.object.user.username }
	# end
	# def building
	# 	{
	# 		building_id: self.object.building.id,
	# 		borough: self.object.building.borough,
	# 		bin: self.object.building.bin,
	# 		block: self.object.building.block,
	# 		lot: self.object.building.lot,
	# 		address: self.object.building.address,
	# 		circa: self.object.building.circa,
	# 		start_date: self.object.building.start_date,
	# 		end_date: self.object.building.end_date,
	# 		build_date: self.object.building.build_date,
	# 		alt_date_1: self.object.building.alt_date_1,
	# 		alt_date_2: self.object.building.alt_date_2,
	# 		architect: self.object.building.architect,
	# 		developer: self.object.building.developer,
	# 		alt_arch_1: self.object.building.alt_arch_1,
	# 		alt_arch_2: self.object.building.alt_arch_2,
	# 		style: self.object.building.style,
	# 		style_sec: self.object.building.style_sec,
	# 		style_oth: self.object.building.style_oth,
	# 		secondary_material: self.object.building.secondary_material,
	# 		primary_material: self.object.building.primary_material,
	# 		mat_third: self.object.building.mat_third,
	# 		mat_four: self.object.building.mat_four,
	# 		mat_other: self.object.building.mat_other,
	# 		original_use: self.object.building.original_use,
	# 		use_other: self.object.building.use_other,
	# 		build_type: self.object.building.build_type,
	# 		build_oth: self.object.building.build_oth,
	# 		notes: self.object.building.notes,
	# 		build_nme: self.object.building.build_nme,
	# 		historical_district: self.object.building.historical_district,
	# 		lm_orig: self.object.building.lm_orig,
	# 		lm_new: self.object.building.lm_new
	# 	}
	# end
end
# coordinates: self.object.building.coordinates
