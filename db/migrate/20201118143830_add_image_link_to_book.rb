class AddImageLinkToBook < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :image_link, :string
  end
end
