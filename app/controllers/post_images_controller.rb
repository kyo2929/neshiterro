class PostImagesController < ApplicationController
  def new
    @post_image = Post_image.new
  end
  
  def create
    @post_image = Post_image.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_image_index_path
  end

  def index
  end

  def show
  end
  
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
