class Recommendation < ApplicationRecord
  belongs_to :user
  has_many :books
end
