class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimun: 6 }
end
