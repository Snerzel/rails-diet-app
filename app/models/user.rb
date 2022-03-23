class User < ApplicationRecord
    belongs_to :pro, optional: true
    has_many :meals
    has_many :allergens, through: :meals
    
    has_secure_password

    validates :name, uniqueness: true,  presence: true
    validates :email, uniqueness: true, presence: true

    
end
