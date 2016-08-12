class Car < ActiveRecord::Base
  belongs_to :user
  validates :seats, :brand, :model, :year_of_production, :description, :country, :category, :price_per_day, :km, presence: true
  has_attachments :photos, maximum: 3
  validates :photos, presence: true
  serialize :category

  def self.search(search)
    #binding.pry
    results = where.not(id: nil)

    results = results.where(country: search[:country]) if search[:country]

    results = results.where("category LIKE ?", "%#{search[:category]}%") if search[:category]

    results = results.where(seats: search[:seats]) if search[:seats]

    results
  end
end
