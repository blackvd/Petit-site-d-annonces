class CreateAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.text :content
      t.decimal :price
      t.string :state

      t.timestamps
    end
  end
end
