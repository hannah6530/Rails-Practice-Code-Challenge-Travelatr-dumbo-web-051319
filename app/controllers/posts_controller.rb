class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new

    @bloggers = Blogger.all
    @destinations = Destination.all
  end

  def create
    @post = Post.create(post_params)

    redirect_to @post
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post
  end

  def show
    @post = Post.find(params[:id])
    @blogger = @post.blogger
    # @blogger = Blogger.find(params[:id])
    # @destination = Destination.find(params[:id])
    @destination = @post.destination

  end

  def edit
    @post = Post.find(params[:id])
    @bloggers = Blogger.all
    @destinations = Destination.all
  end



  private

   def post_params
     params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
   end
end
