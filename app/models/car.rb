class Car < ActiveRecord::Base
  belongs_to :user
  has_many :images
  validates :seats, :brand, :model, :year_of_production, :description, :location, :category, :price_per_day, :km, presence: true
    mount_uploader :photo, PhotoUploader
end
