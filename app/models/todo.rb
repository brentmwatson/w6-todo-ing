class Todo < ApplicationRecord

belongs_to :list

validates :listname, :task,
    presence: true,
    uniqueness: true

end
