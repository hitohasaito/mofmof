class Station < ApplicationRecord
  validates :station1, presence:true
  validates :line1, presence:true
  validates :walking_minutes1, presence:true,numericality: true

  belongs_to :estate, optional: true
end
