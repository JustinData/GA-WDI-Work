class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.text :spotify_uri, null: false
      t.decimal :price, null: false, default: 0.99
      t.timestamp
      t.references :artist, null: false, index: true
    end
    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE songs
          ADD CONSTRAINT fk_songs_artists
          FOREIGN KEY (artist_id)
          REFERENCES artists(id)
        SQL
      end
    end
  end  
 
end
