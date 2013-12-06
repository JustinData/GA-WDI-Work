class CreateWatchlist < ActiveRecord::Migration
  def change
    create_table :watchlists do |t|
    	t.string :title
    	t.boolean :seen, default: false
    	t.integer :rating
    	t.string :poster
    	t.string :plot

    	t.timestamps
    end
  end
end
