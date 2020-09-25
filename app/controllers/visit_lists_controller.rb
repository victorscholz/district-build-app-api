class VisitListsController < ApplicationController
	def index
		visit_lists = VisitList.all
		render json: visit_lists
	end

	def show
		visit_list = find_visit_list
		render json: visit_list
	end

	def destroy
		visit_list = visit_list.destroy
		render json: visit_list
	end

	private

	def find_visit_list
		visit_list = VisitList.find(params[:id])
	end
end
