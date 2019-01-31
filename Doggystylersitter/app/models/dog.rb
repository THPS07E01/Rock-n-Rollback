class Dog < ApplicationRecord
belongs_to :city
belongs_to :dog_group
has_many :strolls, through: :dog_groups
end
