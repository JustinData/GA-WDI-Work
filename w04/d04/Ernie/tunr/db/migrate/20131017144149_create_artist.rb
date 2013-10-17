class CreateArtist < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.timestamps
    end
    def down
      drop_table :artists
    end
  end
end
