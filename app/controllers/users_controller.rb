class UsersController < ApplicationController

#Pulls all users in the library when user controller is called
def index
  @user=User.all
end
# Assigns self class to user so it may be passed to other actions
def new
  @user=User.new
end

def create
  #assigning columns of table to object (se private action)
  @user=User.new(user_params)
  # determiner what to do with the parts of the table
  if @user.save
    flash[:notice]="Success, Please log in to start."
    redirect_to :root
  else
    flash[:notice]="Plese fix the feilds listed."
    render :new
  end
end


private
#being passed to @user
def user_params
  params.require(:user).permit(:username, :name, :email, :password)
end

end
