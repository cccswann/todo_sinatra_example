class Todo < ActiveRecord::Base #533 methods 
    belongs_to :user #7 methods: user, user=, build_user
    validates :title, presence: true, uniqueness: true
    validates :user, presence: true
end
