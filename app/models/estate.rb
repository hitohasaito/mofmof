class Estate < ApplicationRecord
  validates :name, presence:true
  validates :fee, presence:true, numericality: true
  validates :adress, presence:true
  validates :age, presence:true

  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, reject_if: :reject_stations, allow_destroy:true

  def reject_stations(attributes)
    attributes['station1'].blank?
    attributes['line1'].blank?
    attributes['walking_minutes1'].blank?
  end
end
