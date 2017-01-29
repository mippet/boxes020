class ProductsController < ApplicationController

  def new
    @product = Product.all
  end

  def create
    @box = Box.find(params[:box_id])
    @product = @box.products.new(product_params)
    @product.box_id = params[:box_id]

    @product.save
        redirect_to @product.box
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to @product.box
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :image)
  end
end
