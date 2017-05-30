class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end
  
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    
    if @post.save
      redirect_to @user
    end
    
  end
  
  private
  def post_params
    params.require(:post).permit(:title,:body)
  end
end