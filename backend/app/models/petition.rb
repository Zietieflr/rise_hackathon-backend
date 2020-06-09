class Petition < ApplicationRecord
  has_many :signatures
  has_many :signees, through: :signatures
end
