class ApprovalLevelsController < ApplicationController
  def new
  end
  
  def create
    @users = []
    @operations = []
    @approval_level = ApprovalLevel.new
    @ope_levels = []
    @signers = []
    
    params.each do |key, value|
      puts "Key: #{key}, Valor: #{value}"
      if key.include? "user" and value.to_i > 0
        @users << User.find(value)
      elsif key.include? "operation" and value.to_i > 0
        @operations << Operation.find(value)
      end
    end
    
    @approval_level.nombre = params[:nombre]
    @approval_level.descripcion = params[:descripcion]
    @approval_level.paralelo = params[:paralelo]
    @approval_level.aprobado = false
    
    i = 0
    j = 0
    signer_saved = true
    ope_level_saved = true
    @operations.each do |operation|
      if @approval_level.paralelo
        @users.each do |user|
          @signers << Signer.new
          @signers[i].user = user
          @signers[i].approval_level = @approval_level
          unless @signers[i].save
            signer_saved = false
          end
          i += 1
        end
      end
      @ope_levels << OpeLevel.new
      @ope_levels[j].operation = operation
      @ope_levels[j].approval_level = @approval_level
      unless @ope_levels[j].save
        ope_level_saved = false
      end
      j += 1
    end
    
    if @approval_level.save and @approval_level.paralelo and signer_saved and ope_level_saved
      flash[:success] = "El nivel de Aprobación ha sido creado."
      redirect_to approval_levels_path
    elsif @approval_level.save and @approval_level.paralelo == false and ope_level_saved
      flash[:success] = "El nivel de Aprobación ha sido creado."
      redirect_to approval_levels_path
    else
      render :new
    end
    
    
    
     @users.each do |user|
       puts "#{user.name} #{user.surname}"
     end
     @operations.each do |operation|
       puts operation.nombre
     end
     puts "Nombre: #{@approval_level.nombre}, Descripción: #{@approval_level.descripcion}, Paralelo: #{@approval_level.paralelo}, Aprobado: #{@approval_level.aprobado}"
    
    # redirect_to approval_levels_path
  end

  def edit
  end

  def show
  end

  def index
  end
end
