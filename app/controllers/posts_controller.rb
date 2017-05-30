class PostsController < ApplicationController
  def show
    p '*'*100
    p params
    @post = Post.find(params[:id])
  end
end