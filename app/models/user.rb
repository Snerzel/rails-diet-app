class User < ApplicationRecord
    belongs_to :pro, optional: true
    has_many :meals
    has_many :notes, through: :meals
    
    
    has_secure_password

    #validates :name, uniqueness: true,  presence: true
    validates :email, uniqueness: true, presence: true

    def self.create_by_google_omniauth(auth)
      
        self.find_or_create_by(email: auth[:info][:email]) do |u|
          u.password = SecureRandom.hex
        end
      end

    
end
