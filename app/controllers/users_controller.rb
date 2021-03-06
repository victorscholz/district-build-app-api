class UsersController < ApplicationController
	skip_before_action :authorized, only: [:create]

	# def profile
	# 	render json: { user: UserSerializer.new(current_user) },
	# 	       status: :accepted
	# end

	def create
		user = User.create(user_params)
		if user.valid?
			token = encode_token({ user_id: user.id })
			render json: { user: UserSerializer.new(user), jwt: token },
			       status: :created
		else
			render json: { error: 'failed to create user' },
			       status: :not_acceptable
		end
	end 

	def index
		users = User.all
		render json: users
	end

	def show
		user = find_user
		render json: {
				id: user.id, name: user.username, buildings: user.buildings
		       }
	end

	# def create
	# 	user = User.create(user_params)
	# 	render json: user
	# end 

	def update
		user = find_user
		user.update(user_params)
		render json: user
	end

	private

	def find_user
		user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
