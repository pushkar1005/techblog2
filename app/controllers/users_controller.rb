class UsersController < ApplicationController
	before_action :user_admin, only: [:new,:create,:edit,:update]


	def index
		@users = User.all.paginate(:page => params[:page], :per_page => 12)
	end

	def show
		@user = User.find(params[:id])
		@posts = @user.posts.paginate(page: params[:page],:per_page => 16)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render "new"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to @user
		else
			render "edit"
		end

	end


	private

	def user_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation,:picture)
	end

	def user_admin
		if !(current_user && current_user.admin?)
			redirect_to root_path
		end
	end

end
