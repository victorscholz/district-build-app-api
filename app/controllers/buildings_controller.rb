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
		)
	end
end
