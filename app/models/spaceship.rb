class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name,  presence: true, uniqueness: true
  validates :price, numericality: { only_integer: true }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :destination ],
    using: {
      tsearch: { prefix: true }
    }

end
