class Securities::CoordinatesController < ApplicationController
  def create
    @coordinate = Coordinate.new(coordinate_params)
    
    #@coordinates = Coordinate.create([
    #  {column: 0, row: 0, value: set_value},
    #  {column: 1, row: 1, value: set_value},
    #  {column: 2, row: 2, value: set_value},
    #  {column: 3, row: 3, value: set_value},
    #  {column: 4, row: 4, value: set_value},
    #])
    
    if @coordinate.save
      redirect_to security_path
    else
      render 'securities/new'
    end
  end
  
  private
    def coordinate_params
      params.require(:coordinate).permit(:column, :row, :value)
    end
    
    def set_value
      abc = ("a".."z").to_a
      a23 = ("0".."9").to_a
      
      value = abc[rand(abc.length - 1)] + a23[rand(a23.length - 1)] + abc[rand(abc.length - 1)]
    end
end
