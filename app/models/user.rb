class User < ApplicationRecord
    has_secure_password

    has_many :lists
    validates :username, :email,
              presence: true,
              uniqueness: true

    validates :email,
        format:  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
end
