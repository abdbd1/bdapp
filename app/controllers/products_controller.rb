class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      flash[:success] = "Su Producto ha sido creado."
      redirect_to products_path
    else
      render 'new' # Another way is -> # render :new
    end
  end

  def edit
  end

  def show
  end

  def index
    @products = current_user.products
  end
  
  private
    
    def product_params
      params.require(:product).permit(:nombre, :vigencia, :emision, :tipo, :saldo)
    end
end
