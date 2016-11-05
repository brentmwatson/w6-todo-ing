class AddTodoRefToList < ActiveRecord::Migration[5.0]
  def change
    add_reference :lists, :todo, foreign_key: true
  end
end
