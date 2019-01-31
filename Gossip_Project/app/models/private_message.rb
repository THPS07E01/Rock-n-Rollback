class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :multi_recipients
  has_many :recipients, through: :multi_recipients
end
