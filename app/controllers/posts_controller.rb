class PostsController < ApplicationController

  def index
    # @message = "Staten Island Coin Club"
  end

  def create
    @post = Post.create( post_params )
  end


  * new
  * show
  * edit
  * update
  * destroy




  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update()
  # controller methods.

  def post_params
    params.require(:post).permit(:title, :image, :post, :user_id)
  end

end
