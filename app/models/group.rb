class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups
    validates :group_name, uniqueness: true, presence: true, length: {minimum: 4, maximum: 20}
end
