class Character < ApplicationRecord
    validates :charname, presence: true, length: { minimum: 2 }
    
end
