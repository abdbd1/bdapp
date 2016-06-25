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
        @user_roles << UserRole.new
      elsif key.include? "rol" and id.to_i > 0
        @roles << Role.find(id)
        @user_roles << UserRole.new
        #puts "Rol: #{key}, ID: #{id}"
      end
    end
    
    i = 0
    
    @users.each do |user|
      @roles.each do |role|
        @user_roles[i].user = user
        @user_roles[i].role = role
        @user_roles[i].save
        i += 1
      end
    end
    
    # @users.each do |user|
    #   puts user.name
    # end
    
    # @roles.each do |role|
    #   puts role.nombre
    # end
    
    redirect_to allocation_path
  end

  def edit
  end

  def index
    @roles = Role.all
  end
  
  private
    
    def role_params
      params.require(:role).permit(:nombre, :descripcion)
    end
end
