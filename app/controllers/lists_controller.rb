class ListsController < ApplicationController

  #if no session
  #two buttons
  #if session exist
  #show list
  def index
    if session[:user_id]
      #render lists.html.erb
      render :lists
    else
      # render index.html.erb
      render :index
    end
  end

  def new
    @list=List.new
    #create new form here
  end

  def create
    @list=List.new(list_params)
    if @list.save

      flash[:notice]="List created successfully."
      else
    end

  end

  # def edit
  # end

  # def update
  # end

  def destroy
  end
end
