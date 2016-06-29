module OperationsHelper
  def role_operations(current_user_role)
    operations = []
    i = 0
    
    Operation.all.each do |operation|
      if operation.ope_roles.role_id == current_user_role.id
        operations[i] << operation
        i += 1
      end
    end
    
    operations
  end
end
