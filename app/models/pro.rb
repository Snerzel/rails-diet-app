class Pro < ApplicationRecord
    has_many :users
    has_many :meals, through: :users
end
