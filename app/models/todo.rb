class Todo < ApplicationRecord

belongs_to :list

validate :listname, :task, 
    presence: true
    uniqueness: true

end
