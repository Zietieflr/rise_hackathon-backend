class Signature < ApplicationRecord
  belongs_to :petition
  belongs_to :signee
end
