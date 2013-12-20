class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.date :date_created
      t.date :date_listed
      t.decimal :asking_price
      t.integer :medium_id, null: false
      t.integer :artist_id, null: false
      t.integer :collection_id, null: false
      t.integer :customer_id, null: false
      t.boolean :for_sale?, default: false

      t.timestamps
    end
  end
end
