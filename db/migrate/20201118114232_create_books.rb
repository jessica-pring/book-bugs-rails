class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.integer :rating
      t.string :link
      t.string :season
      t.references :recommendation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
