class PostImagesController < ApplicationController

  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = Postimage.new(post_image_params)
    @post_image.user_id = ourrent_user.id
    @post_image.save
    redirect_to post_image_path
  end

  def index
    @post_image = PostImage.all
  end

  def show
  end

  def desroy
  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end
