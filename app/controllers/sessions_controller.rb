class SessionsController < ApplicationController

#renders a new user form from veiw >> sessions >> new.html.erb
def new
end

# Creates new user from the submit button on form
def create
  user=User.find_by(username: params[:session][:username])
    if user
      session[:user_id] = user.id
      flash[:notice]="Successful login created."
      redirect_to :root
#still need to find when they do not match, ask chris
    else
      # Alerts user and sends back to the new user form
      flash[:notice]="Please fill in all the feilds."
      render :new

    end
end

def destroy #logout
  session[:user_id] = nil
  flash[:notice]="Successfully logged out. "
  redirect_to :root
end


end
