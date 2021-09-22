class RegistrationsController < ApplicationController
  def new 
    @user = User.new
    #@user = User.all
  end  

  def create
    #render plain: params funciona para ver os params 21/09/2021
    #render plain: params[:user] #//ajuda mais somente dados eperados do user nos campos!
    @user = User.new(user_params) #new(params[:user]) //estoui chamando minha action privada
    if @user.save
      session[:user_id] = @user.id # funciona normalmente sem essa linha 21/09/2021
      redirect_to root_path, notice: "Sucessfully creat account"
    else
      ##flash[:alert] = "Erro ao criar conta" // comentado mas funcionando !21/09/2021
      render :new
    end  
  end  

  private

  def user_params
    # parametro que estou exigindo !
    params.require(:user).permit(:email, :password, :password_confirmation)
  end  
end  
