class Like < ApplicationRecord
  belongs_to :user
  belongs_to :gossip
  belongs_to :comment
  belongs_to :subcomment
end