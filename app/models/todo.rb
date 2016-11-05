class Todo < ApplicationRecord

belongs_to :list

validate :listname presence: true

end
