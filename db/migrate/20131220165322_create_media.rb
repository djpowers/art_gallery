class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title, null: false
      t.integer :artwork_id, null: false

      t.timestamps
    end
  end
end
