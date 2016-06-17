class UsersController < ApplicationController
  def show
    @phone = Phone.new
  end
  
  def create_phone
    @phone = current_user.phones.create(phone_params)
    
    if @phone.save
      flash[:success] = "¡Número Agregado!"
      redirect_to perfil_path
    else
      render 'show'
    end
  end
  
  def destroy_phone
    Phone.find(params[:id]).destroy
    flash[:warning] = "Número Eliminado"
    redirect_to perfil_path
  end
  
  private
    
    def phone_params
      params.require(:phone).permit(:number, :type)
    end
end
