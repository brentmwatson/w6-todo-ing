class Todo < ApplicationRecord

belongs_to :list

validates :task,
    presence: true,
    uniqueness: true

end
