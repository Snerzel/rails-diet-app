class Category < ApplicationRecord
    has_many :meals

    def self.alpha
        order(:name)
    end
end
