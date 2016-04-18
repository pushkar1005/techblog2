class PostsController < ApplicationController
	before_action :logged_in_user, only: [:new,:destroy,:edit,:create,:update]
	before_action :correct_user, only: [:edit]

	def index
		@posts = Post.all.order(created_at: :desc).paginate(:page => params[:page], :per_page => 25)
		@page = params[:page]
		if !(@page.nil? || @page==1)
				@posts = Post.all.order(created_at: :desc).paginate(:page => params[:page], :per_page => 24)
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		#@post = Post.new(post_params)
		@post = current_user.posts.build(post_params)
		#@micropost = current_user.microposts.build(micropost_params)
		if@post.save
			redirect_to root_path
		else
			render "new"
		end
	end

	def new
		@post = Post.new
	end

	def destroy
		@post = Post.find(params[:id]).destroy
		redirect_to root_path
	end

	def edit
		@post=Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if@post.update_attributes(post_params)
			redirect_to root_path
		else
			render "edit"
		end
	end

	private

	def find_post
		@post=Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title,:content,:category_id,:picture)
	end

	def correct_user
		@post = Post.find(params[:id])
		if !current_user.admin?&&current_user!=@post.user
			redirect_to current_user
		end
	end

end
