class Book < ApplicationRecord
  SEASONS = ["Spring", "Summer", "Autumn", "Winter"]

  belongs_to :recommendation

  # validates :season, presence: true, inclusion: { in: SEASONS }
end
