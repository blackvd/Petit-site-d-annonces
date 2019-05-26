class AddCategoryRefToAdvertisements < ActiveRecord::Migration[5.2]
  def change
    add_reference :advertisements, :category, foreign_key: true
  end
end
