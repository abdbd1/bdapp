class Securities::CardsController < ApplicationController
  def create
  end
  
  def show
  end
  
  def destroy
    Card.find(params[:id]).destroy
    flash[:warning] = "Tarjeta de Coordenadas Eliminada"
    redirect_to profile_path
  end
end
