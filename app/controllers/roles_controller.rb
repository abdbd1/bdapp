class RolesController < ApplicationController
  def new
    @role = Role.new
  end
  
  def create
    @role = Role.new(role_params)
    
    if @role.save
      flash[:success] = "El nuevo Rol ha sido creado."
      redirect_to roles_path
    else
      render :new
    end
  end
  
  def allocation
    @roles = Role.all
  end
  
  def allocate
    @users = []
    @roles = []
    @user_roles = []
    
    params.each do |key, id|
      if key.include? "user" and id.to_i > 0
        #puts "Key: #{key}, ID: #{id}"
        @users << User.find(id)
      elsif key.include? "rol" and id.to_i > 0
        @roles << Role.find(id)
        #puts "Rol: #{key}, ID: #{id}"
      end
      @user_roles << UserRole.new
    end
    
    i = 0
    
    @users.each do |user| # Evita que se guarden roles repetidos
      @roles.each do |role|
        has_role = false
        user.user_roles.each do |user_role|
          if user_role.role.nombre.include? role.nombre
            has_role = true
          end
        end
        
        unless has_role
          @user_roles[i].user = user
          @user_roles[i].role = role
          @user_roles[i].save
          i += 1
        end
      end
    end
    
    # @users.each do |user|
    #   puts user.name
    # end
    
    # @roles.each do |role|
    #   puts role.nombre
    # end
    
    flash[:success] = "Los Roles han sido asignados."
    redirect_to roles_path
  end

  def edit
    @role = Role.find(params[:id])
  end
  
  def update
    @role = Role.find(params[:id])
    
    if @role.update_attributes(role_params)
      flash[:success] = "¡Rol Modificado!"
      redirect_to roles_path
    else
      render 'edit'
    end
  end

  def index
    @roles = Role.all
  end
  
  def destroy
    flash[:danger] = "Se ha eliminado el Rol"
    #@role.destroy
    Role.find(params[:id]).destroy
    redirect_to roles_path
  end
  
  private
    
    def role_params
      params.require(:role).permit(:nombre, :descripcion)
    end
end
