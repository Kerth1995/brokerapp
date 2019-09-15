class LoginController < ApplicationController
  def index
    @usuario = Usuario.new
  end

  def create
    if @usuario = login(params[:email], params[:password])
      redirect_back_or_to(home_index_path)
    else
      render action: :index
    end
  end

  def destroy
    logout
    redirect_to(login_path)
  end

end
