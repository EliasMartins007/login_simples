class SessionsController < ApplicationController
  #message = '' # para log 21/09/2021
  #message = My_log.new()
  #
  def new
    #
  end
  #
  #realizar login

  def index
    #flash.now[:notice] = 'ola'
    #flash.now[:alert] = 'oi'
  end  


  def create
    #realizar confirmação login e password e realizar sessão do usuario 21/09/2021
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id

      #teste meu log 21/09/2021
      ##Post.create(:title => "teste", :contents => "ola")
      MyLog.debug(params) #funcionou !! 21/09/2021 "teste log personalizado")
      MyLog.info(user.email)#MyLog.before_save(user)#//funcionou 
      #fim teste 
      redirect_to principal_path, notice: "Logged in successfully" # funciona about_path
    else
      flash[:alert] = "Invalid email or password2021"   
      #My_log.debug("deu ruim")
      render :new  # action new!! da controller
    end    
  end  
  # logout
  def destroy
    session[:user_id] = nil
    #redirect_to root_path, notice: "Logged out" #//original funcionando
    #teste elias 22/09/2021
    ###flash[:warning] = 'Logout realizado com sucesso'
    #fim teste 
    redirect_to sign_in_path, notice: 'Logged out' #funcionou certo 21/09/2021
  end  
end  