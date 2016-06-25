class Operation < ActiveRecord::Base
  validates_presence_of :acronimo, :nombre, :montomax, :montomin, :tipo,
                        :juridico, :natural
end
