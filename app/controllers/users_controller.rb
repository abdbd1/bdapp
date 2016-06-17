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
      render 'new'
    end
  end
  
  private
    
    def phone_params
      params.require(:phone).permit(:number, :type)
    end
end
