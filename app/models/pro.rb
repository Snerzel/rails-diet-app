class Pro < ApplicationRecord
    has_many :users
    has_many :meals, through: :users

    has_secure_password

    validates :name, uniqueness: true,  presence: true
    validates :email, uniqueness: true, presence: true

    
end
