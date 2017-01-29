class BoxesController < ApplicationController

  def index
    @boxes = Box.all.order(params[:sort])
  end

  def show
    @box = Box.find(params[:id])
    @products = Product.all
  end

  def new
   @box = Box.new
  end

  def create
  @box = Box.new(box_params)
    if @box.save
        redirect_to root_path
      else
        render 'new'
    end
  end

  def destroy
    @box = Box.find(params[:id])
    @box.destroy

    redirect_to root_path
  end

  private

  def box_params
    params.require(:box).permit(:title, :description, :image)
  end
end
