class Book < ApplicationRecord
  belongs_to :recommendation, class_name: "recommendation", foreign_key: "recommendation_id"
end
