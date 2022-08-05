class Note < ApplicationRecord
    belongs_to :pro
    belongs_to :meal, optional: true
    
end
