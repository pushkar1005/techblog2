class CategorysController < ApplicationController
  before_action :user_admin, only: [:new,:create]

  def show
  	@category = Category.find(params[:id])
  	@id = params[:id]
  	@posts = Post.all.where(category_id: @id).order(created_at: :desc).paginate(:page => params[:page], :per_page => 20)
  end

  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  		redirect_to root_path
  	else
  		render "new"
  	end
  end

  private

  def category_params
  	params.require(:category).permit(:name)
  end

  def user_admin
    if !(current_user && current_user.admin?)
      redirect_to root_path
    end
  end

end
