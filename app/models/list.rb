class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validate :image_presence

  private

  def image_presence
    unless image.attached?
      errors.add(:image, "must be attached")
    end
  end
end
