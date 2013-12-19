class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :birthplace
      t.text :art_style

      t.timestamps
    end
  end
end
