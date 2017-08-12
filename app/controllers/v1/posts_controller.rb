class V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index, status: :ok
  end

  def create
    @post = Post.new(
      title: params[:title],
      description: params[:description],
      likes: 0
    )
    @post.save

    render :create, status: :created
  end

  def destroy
    @post = Post.where(id: params[:id]).first
    if @post.destroy
      head(:ok) #return only the header
    else
      head(:unprocessable_entity)
    end
  end
end
