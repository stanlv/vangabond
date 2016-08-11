class Car < ActiveRecord::Base
  belongs_to :user
  validates :seats, :brand, :model, :year_of_production, :description, :location, :category, :price_per_day, :km, presence: true
  has_attachments :photos, maximum: 3
  validates :photos, presence: true
end
