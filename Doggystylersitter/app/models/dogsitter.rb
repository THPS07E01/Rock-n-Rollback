class Dogsitter < ApplicationRecord
belongs_to :city
has_many :strolls
has_many :dog_groups, through: :strolls
end
