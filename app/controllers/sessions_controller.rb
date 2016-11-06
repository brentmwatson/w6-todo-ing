class SessionsController < ApplicationController
#renders a new user form from veiw >> sessions >> new.html.erb

# def index
# end

# def new
# end


def create
  # Saves new session and REDIRECTS
  #Query user to assign to session to save
  user=User.find_by(username: params[:session][:username])
    if user
      session[:user_id] = user.id
      flash[:notice]="Successful login created."
      redirect_to :root
    else
      # Alerts user and sends back to the new user form
      flash[:notice]="Please fill in all the feilds."
      render :new

    end
end

def destroy
  #destroys session and REDIRECTS
  session[:user_id] = nil
  flash[:notice]="Successfully logged out. "
  redirect_to :root
end


end
