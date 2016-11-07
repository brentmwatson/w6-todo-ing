class ListsController < ApplicationController
    def index
        # HAS TEMPLATE reders ALL list
        if session[:user_id] #ruby session checking for user_id
        @lists = current_user.lists.order('created_at') #method called on list
        render :lists #show list
        else
        render :index #go back to the beginning
        end
    end

    def new
        # displays the form for NEW record
        # HAS TEMPLATE
        @list = List.new
    end

    def create
        # Saves new record changes
        # SAVES and REDIRECTS
        @list = List.new(list_params) # assign :listname to object @list
        @list.user = current_user #assign :user_id to object @list
        # @list now is [:listname :user_id]
        if @list.save # if save occures
            flash[:notice] = 'List created successfully.' # flash for user
            redirect_to root_path
        else
            render :new
        end
    end

      # def edit #Displays form for EXISTING record
      #   #HAS TEMPLATE
      # end

      # def update #saves changes to EXISTING record
      #   #SAVES AND REDIRECTS
      # end

      def destroy #DESTROYS and REDIRECTS
      end


private

      def list_params
          params.require(:list).permit(:listname)
      end


end

#   def index
#     # HAS TEMPLATE reders ALL list
#     #if session[:user_id]
#       @lists=List.all.order("created_at")
#      render :lists
#     #else
#     #  render :index
#     #end
#   end
#
#
#   def show
#     #HAS TEMPLATE renders SINGLE list
#     #etra for assignment
#   end
#
#   def new #displays the form for NEW record
#     #HAS TEMPLATE
#     @list=List.new
#
#   end
#
#   def create #Saves new record changes
#     #SAVES and REDIRECTS
#     @list=List.new(list_params) #assign object based on params
#               #@list.user = current_user #only the list of the current user
#     if @list.save #if save occures
#       flash[:notice]="List created successfully." #flash for user
#               #@list=current_user.list.new(list_params)
#       # ****might nedd to be moved to before if^
#       redirect_to root_path
#     else
#         render :root
#     end
#
#   end
#
#
#   # def edit #Displays form for EXISTING record
#   #   #HAS TEMPLATE
#   # end
#
#
#   # def update #saves changes to EXISTING record
#   #   #SAVES AND REDIRECTS
#   # end
#
#
#   def destroy #DESTROYS and REDIRECTS
#   end
#
#   private
#   def list_params
#     params.require(:list).permit(:listname)
#   end
# end
