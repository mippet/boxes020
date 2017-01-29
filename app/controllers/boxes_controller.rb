class BoxesController < ApplicationController

  def index
    @boxes = Box.all
  end

  def new
   @box = Box.new
  end

  def create
  @box = Box.new(box_params)
  @box.save

  end

  private

  def box_params
    params.require(:box).permit(:title, :description, :image)
  end
end
