class User < ActiveRecord::Base
    has_many :todos
    validates :username, :email, presence: true, uniqueness: true
    validates :email, email: true
    has_secure_password
end
