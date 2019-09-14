class LoginController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def create
    if @usuario = login(params[:username], params[:password])
      redirect_back_or_to(home_index_path)
    else
      redirect_to(home_index_path)
    end
  end

  def destroy
    logout
    redirect_to(login_path)
  end

end
