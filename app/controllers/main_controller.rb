class MainController < ApplicationController
  def index
    ##flash[:notice] = 'Logged sucessfully'  # não existe essas duas linhas no app final
    ##flash[:alert] = 'Invalid email or password'
    #session
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end  
  end
end    