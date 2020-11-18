class Book < ApplicationRecord
  SEASONS = ["Spring", "Summer", "Autumn", "Winter"]

  belongs_to :recommendation, class_name: "recommendation", foreign_key: "recommendation_id"

  # validates :season, presence: true, inclusion: { in: SEASONS }
end
