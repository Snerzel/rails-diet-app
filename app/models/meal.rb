class Meal < ApplicationRecord
    belongs_to :user, optional: true
    has_many :allergens
    has_many :notes
    
end
