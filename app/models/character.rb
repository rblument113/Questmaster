class Character < ApplicationRecord
    validates :charname, presence: true, length: { minimum: 2 }
    validates :level, presence: true, numericality: { greater_than: 0, less_than: 21 }
    validates :strength, presence: true, numericality: { greater_than: 0, less_than: 21 }
    validates :dexterity, presence: true, numericality: { greater_than: 0, less_than: 21 }
    validates :wisdom, presence: true, numericality: { greater_than: 0, less_than: 21 }
    validates :constitution, presence: true, numericality: { greater_than: 0, less_than: 21 }
    validates :intelligence, presence: true, numericality: { greater_than: 0, less_than: 21 }
    validates :charisma, presence: true, numericality: { greater_than: 0, less_than: 21 }
end
