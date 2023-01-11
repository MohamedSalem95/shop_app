class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def show
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			redirect_to @product, notice: 'Product Created Successfully'
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
	end

	def update
		if @product.update(product_params)
			redirect_to @product, notice: 'Product Updated Successfully'
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@product.destroy
		redirect_to products_path, notice: 'Product Deleted Successfully'
	end

	private

	def product_params
		params.require(:product).permit(:name, :description, :price, :stock, :image)
	end

	def set_product
		@product = Product.find(params[:id])
	end

end
