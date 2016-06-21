class Securities::CoordinatesController < ApplicationController
  def create
    @card = Card.new
    @card.user = current_user
    @card.save
    
    #@cardcoors = Array.new(9, CardCoor.new)
    
    # @cardcoors.each do |cardcoor|
    #   cardcoor.card = current_user.card
    #   cardcoor.save
    # end
    
    # @cardcoors[0].card = current_user.card
    # @cardcoors[0].save
    # @cardcoors[1].card = current_user.card
    # @cardcoors[1].save
    
    @cardcoors = []
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    @cardcoors << CardCoor.new
    
    @coordinates = []
    @coordinates << Coordinate.new(column: 0, row: 0, value: set_value)
    @coordinates << Coordinate.new(column: 0, row: 1, value: set_value)
    @coordinates << Coordinate.new(column: 0, row: 2, value: set_value)
    @coordinates << Coordinate.new(column: 1, row: 0, value: set_value)
    @coordinates << Coordinate.new(column: 1, row: 1, value: set_value)
    @coordinates << Coordinate.new(column: 1, row: 2, value: set_value)
    @coordinates << Coordinate.new(column: 2, row: 0, value: set_value)
    @coordinates << Coordinate.new(column: 2, row: 1, value: set_value)
    @coordinates << Coordinate.new(column: 2, row: 2, value: set_value)
    
    for i in 0..8
      @cardcoors[i].card = current_user.card
      @cardcoors[i].coordinate = @coordinates[i]
      @cardcoors[i].save
      @coordinates[i].save
    end
    
    redirect_to security_path
    
    # @coordinates.each do |coordinate|
    #   @cardcoors[i].coordinate = coordinate
    #   @cardcoors[i].save
    #   coordinate.save
    #   i += 1
    # end
    
    #@cardcoor = CardCoor.new
    #@cardcoor.card = current_user.card
    
    #@coordinate = Coordinate.new(coordinate_params)
    
    # @coordinates = Coordinate.new([
    #   {column: 0, row: 0, value: set_value},
    #   {column: 0, row: 1, value: set_value},
    #   {column: 0, row: 2, value: set_value},
    #   {column: 1, row: 0, value: set_value},
    #   {column: 1, row: 1, value: set_value},
    #   {column: 1, row: 2, value: set_value},
    #   {column: 2, row: 0, value: set_value},
    #   {column: 2, row: 1, value: set_value},
    #   {column: 2, row: 2, value: set_value},
    # ])
    
    #@coordinate.save
    
    #if @coordinate.save
    #  redirect_to security_path
    #else
    #  render 'securities/new'
    #end
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
