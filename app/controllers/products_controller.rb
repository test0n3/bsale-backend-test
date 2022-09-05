class ProductsController < ApplicationController
  def index
    @products = Product.all
    unless product_filter_params == {}
      @filters = product_filter_params if product_filter_params
      @filters = ProductFilter.new product_filter_params
      @products = @filters.filter(@products)
    end
    render json: @products
  end

  private

  def product_filter_params
    if params[:product_filter]
      params.require(:product_filter).permit(:terms, :ordering, :category)
    else
      {}
    end
  end
end
