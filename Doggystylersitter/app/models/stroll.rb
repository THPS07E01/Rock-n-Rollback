class Stroll < ApplicationRecord
belongs_to :dogsitter
has_many :dog_groups
end
