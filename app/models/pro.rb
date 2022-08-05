class Pro < ApplicationRecord
    has_many :users
    has_many :notes
    has_many :meals, through: :user
    has_many :noted_meals, through: :notes, source: :meal

    has_secure_password

    validates :name, uniqueness: true,  presence: true
    validates :email, uniqueness: true, presence: true

    
end
