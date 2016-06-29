class OperationsController < ApplicationController
  def new
    @operation = Operation.new
  end
  
  def create
    @operation = Operation.new(operation_params)
    @user_ope = UserOpe.new
    
    @user_ope.operation = @operation
    @user_ope.user = current_user
    
    if @operation.save and @user_ope.save
      flash[:success] = "Has creado una nueva Operación."
      redirect_to operations_path
    else
      render :new
    end
  end
  
  def allocation
  end
  
  def allocate
    @operations = []
    @roles = []
    @ope_roles = []
    
    params.each do |key, id|
      if key.include? "operation" and id.to_i > 0
        #puts "Key: #{key}, ID: #{id}"
        @operations << Operation.find(id)
      elsif key.include? "role" and id.to_i > 0
        @roles << Role.find(id)
        #puts "Rol: #{key}, ID: #{id}"
      end
      @ope_roles << OpeRole.new
    end
    
    i = 0
    not_allocated = false
    
    @roles.each do |role| # Evita que se guarden operaciones repetidas
      @operations.each do |operation|
        has_operation = false
        role.ope_roles.each do |ope_role|
          if ope_role.role.nombre.downcase == operation.nombre.downcase
            has_role = true
          end
        end
        
        unless has_operation
          @ope_roles[i].operation = operation
          @ope_roles[i].role = role
          #@ope_roles[i].asignado = true
          unless @ope_roles[i].save
            not_allocated = true
          end
          i += 1
        end
      end
    end
    
    if not_allocated == false
      flash[:success] = "Las Operaciones han sido asignadas."
      redirect_to operations_path
    else
      render :allocation
    end
  end

  def edit
    @operation = Operation.find(params[:id])
  end
  
  def update
    @operation = Operation.find(params[:id])
    
    if @operation.update_attributes(operation_params)
      flash[:success] = "Operación Modificada."
      redirect_to operations_path
    else
      render 'edit'
    end
  end

  def show
  end

  def index
  end
  
  def transfer
    @users = User.all
  end
  
  def destroy
    flash[:danger] = "Se ha eliminado la Operación."
    Operation.find(params[:id]).destroy
    redirect_to operations_path
  end
  
  private
    
    def operation_params
      params.require(:operation).permit(:acronimo, :nombre, :montomax, :montomin,
                                        :tipo, :natural)
    end
end
