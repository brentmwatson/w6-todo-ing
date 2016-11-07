class TodosController < ApplicationController

def index
  # Has a TEMPLATE and renders a view
end

def show
  #has a TEMPLATE and renders a veiw
end

def new
  #has a TEMPLATE and diplays a form
  @todo=Todo.new
  # @list = List.find.params
end

def create
  # saves a new record and redirects
  @todo=Todo.new(todo_params)
  @list = List.find(params[:list_id])
  #assign list_id from nested route with instance variable
  @todo.list = @list
  if @todo.save
    flash[:notice] = 'Todo created successfully.' # flash for user
      redirect_to root_path
  else
    flash[:notice] ="Please fill in the feilds."
    render :new # new form
  end

end

def edit
  #has a TEMPLATE and displays a form of exsisting record
end

def update
  # saves an exsisting record  and redirects
end

def destroy
  #destroys and redirects
end
private

def todo_params
  params.require(:todo).permit(:task)
end


end
