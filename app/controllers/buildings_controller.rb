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
			:borough,
			:des_addres,
			:date_combo,
			:arch_build,
			:own_devel,
			:style_prim,
			:mat_sec,
			:mat_prim,
			:mat_third,
			:use_orig,
			:build_type,
			:hist_dist
		)
	end
end
