class SecuritiesController < ApplicationController
  def index
    @coordinate = Coordinate.new
  end
  
  private
    
    def set_value
      abc = ("a".."z").to_a
      a23 = ("0".."9").to_a
      
      value = abc[rand(abc.length - 1)] + a23[rand(a23.length - 1)] + abc[rand(abc.length - 1)]
    end
    
    helper_method :set_value
end
