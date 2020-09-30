class BuildingsController < ApplicationController
	def index
		buildings = Building.all
		render json: buildings
	end

	def show
		building = find_building
		render json: building
	end

	def create
		building = Building.create(building_params)
		render json: building
	end

	def update
		building = find_building
		building.update(building_params)
		render json: building
	end

	def destroy
		building = building.destroy
		render json: building
	end

	private

	def find_building
		building = Building.find(params[:id])
	end

	def building_params
		params.require(:building).permit(
			:building_id,
			:borough,
			:bin,
			:block,
			:lot,
			:des_addres,
			:circa,
			:date_low,
			:date_high,
			:date_combo,
			:alt_date_1,
			:alt_date_2,
			:arch_build,
			:own_devel,
			:alt_arch_1,
			:alt_arch_2,
			:style_prim,
			:style_sec,
			:style_oth,
			:mat_sec,
			:mat_prim,
			:mat_third,
			:mat_four,
			:mat_other,
			:use_orig,
			:use_other,
			:build_type,
			:build_oth,
			:notes,
			:build_nme,
			:hist_dist,
			:lm_orig,
			:lm_new
		)
	end
end
