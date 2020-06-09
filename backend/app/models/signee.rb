class Signee < ApplicationRecord
  has_many :signatures
  has_many :petitions, through: :signatures 
end
