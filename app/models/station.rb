class Station < ApplicationRecord
  validates :station1, presence:true
  validates :line1, presence:true
  validates :walking_minutes1, presence:true
  validates :station2, presence:true
  validates :line2, presence:true
  validates :walking_minutes2, presence:true
  belongs_to :estate,optional: true
end
