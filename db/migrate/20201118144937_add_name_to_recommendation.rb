class AddNameToRecommendation < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :name, :string
  end
end
