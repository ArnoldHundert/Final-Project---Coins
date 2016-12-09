class PostsController < ApplicationController

  def index
    # @message = "Staten Island Coin Club"
  end
  def create
    @post = Post.create( post_params )
  end
  def new
    @post = Post.new
  end
  def show
    @post = Post.show( post_params )
  end
  def edit
    @post = Post.edit( post_params )
  end
  def update
    @post = Post.update( post_params )
  end
  def destroy
    @post = Post.destroy( post_params )
  end


  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update()
  # controller methods.

  def post_params
    params.require(:post).permit(:title, :post, :post_image_file_name, :post_image_file_size, :user_id)
  end

end
