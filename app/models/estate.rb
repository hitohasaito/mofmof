class Estate < ApplicationRecord
  validates :name, presence:true
  validates :fee, presence:true, numericality: true
  validates :adress, presence:true
  validates :age, presence:true
  validates :note, presence:true
  
  has_one :station, dependent: :destroy
  accepts_nested_attributes_for :station
end
