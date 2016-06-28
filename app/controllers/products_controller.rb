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
      render 'new'
    end
  end
  
  def allocation
  end
  
  def allocate
    @products = []
    @operations = []
    @ope_pros = []
    
    params.each do |key, id|
      if key.include? "product" and id.to_i > 0
        puts "Key: #{key}, ID: #{id}"
        @products << Product.find(id)
      elsif key.include? "operation" and id.to_i > 0
        @operations << Operation.find(id)
        puts "Rol: #{key}, ID: #{id}"
      end
      @ope_pros << OpePro.new
    end
    
    i = 0
    not_allocated = false
    
    @operations.each do |operation| # Evita que se guarden operaciones repetidas
      @products.each do |product|
        has_product = false
        operation.ope_pros.each do |ope_pro|
          if ope_pro.operation.nombre.downcase == product.nombre.downcase
            has_product = true
          end
        end
        
        unless has_product
          @ope_pros[i].operation = operation
          @ope_pros[i].product = product
          #@ope_roles[i].asignado = true
          unless @ope_pros[i].save
            not_allocated = true
          end
          i += 1
        end
      end
    end
    
    @products.each do |product|
      puts product.nombre
    end
    
    @operations.each do |operation|
      puts operation.nombre
    end
    
    if not_allocated == false
      flash[:success] = "Las Operaciones han sido asignadas."
      redirect_to products_path
    else
      render :allocation
    end
  end

  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    
    if @product.update_attributes(product_params)
      flash[:success] = "Producto Modificado."
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def show
  end

  def index
    @products = current_user.products
  end
  
  def destroy
    flash[:danger] = "Se ha eliminado el Producto"
    Product.find(params[:id]).destroy
    redirect_to products_path
  end
  
  private
    
    def product_params
      params.require(:product).permit(:nombre, :vigencia, :emision, :tipo, :saldo, :number)
    end
end
