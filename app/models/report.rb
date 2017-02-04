class Report < ApplicationRecord
  has_many :receipts
  belongs_to :user
end
