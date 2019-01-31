class Doctor < ApplicationRecord
  belongs_to :city
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :spe_docs
  has_many :specialties, through: :spe_docs

end
