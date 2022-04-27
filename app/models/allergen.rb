class Allergen < ApplicationRecord
    belongs_to :meal
<<<<<<< HEAD



    
=======
    # relationship error active_support/inflector/methods.rb:274:in `const_get' (key is the active_support)
    # fix change belongs_to :meals to belongs_to :meal (not plural) because one allergen belongs to one meal
  
>>>>>>> 7ab079fad6cfc6fe136c0763defc28c0b589bf9e
end
