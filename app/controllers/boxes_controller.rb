class BoxesController < ApplicationController

  def index
    @boxes = Box.all
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

  private

  def box_params
    params.require(:box).permit(:title, :description, :image)
  end
end
