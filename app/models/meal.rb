class Meal < ApplicationRecord
    belongs_to :user
    has_many :allergens
    has_many :notes
    
    scope :has_name, ->(name) {where(name: true)}
    scope :created_before, ->(time) { where('created_at < ?', time) }
end
