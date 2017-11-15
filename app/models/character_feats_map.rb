class CharacterFeatsMap < ApplicationRecord
  belongs_to :character
  belongs_to :feat
end
