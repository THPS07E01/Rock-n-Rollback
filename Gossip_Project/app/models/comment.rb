class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gossip
  has_many :subcomments
  has_many :likes
end
