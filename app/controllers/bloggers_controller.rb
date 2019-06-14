class BloggersController < ApplicationController
  def index
    @bloggers = Blogger.all
  end

  def show
    @blogger = Blogger.find(params[:id])
  end

  def new
    @blogger = Blogger.new
  end

  def create
    blogger = Blogger.create(blogger_params)
    redirect_to blogger
  end

  def destroy
    blogger = Blogger.find(params[:id])
    blogger.destroy
    redirect_to blogger
  end

  private

  def blogger_params
  params.require(:blogger).permit(:name, :age, :bio )
  end


end
