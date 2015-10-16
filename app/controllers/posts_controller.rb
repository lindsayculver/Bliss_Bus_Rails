class PostsController < ApplicationController
  def new
    @bus = Bus.find(params[:bus_id])
    @post = @bus.posts.new
  end

  def create
    @bus = Bus.find(params[:bus_id])
    @post = @bus.posts.new(post_params)
    if @post.save
      redirect_to bus_path(@post.bus)
    else
      render :new
    end
  end

  def destroy
    @bus = Bus.find(params[:bus_id])
    @post = @bus.posts.find(params[:id])
    @post.destroy
    redirect_to bus_path(@bus)
  end

  private
  def post_params
    params.require(:post).permit(:text)
  end
end
