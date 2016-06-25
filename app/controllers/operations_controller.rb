class OperationsController < ApplicationController
  def new
    @operation = Operation.new
  end

  def edit
  end

  def show
  end

  def index
    @operations = Operation.all
  end
  
  private
    
    def operation_params
      params.require(:operation).permit(:acronimo, :nombre, :montomax, :montomin,
                                        :tipo, :juridico, :natural)
    end
end
