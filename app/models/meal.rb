class Meal < ApplicationRecord
    belongs_to :user
    has_many :allergens

    
end
