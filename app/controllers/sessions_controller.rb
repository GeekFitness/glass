class SessionsController < ApplicationController
  def new
  end

  def create
    client = Client.find_by(email: params[:session][:email].downcase)
    if client && client.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in client
      redirect_to client
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
 	 end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
