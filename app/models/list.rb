class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, :image, presence: true, uniqueness: true
end
