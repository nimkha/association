class User < ApplicationRecord
    has_many :user_groups
    has_many :groups, through: :user_groups

    validates :user_name, presence: true, uniqueness: true, length: {minimum: 4, maximum: 20}
    validates :user_password, presence: true, length: {minimum: 4, maximum: 50}
    validates :user_email, presence: true, length: {minimum: 4, maximum: 50}
    validates :user_firstname, presence: true, length: {minimum: 3, maximum: 20}
    validates :user_lastname, presence: true, length: {minimum: 3, maximum: 20}
end
