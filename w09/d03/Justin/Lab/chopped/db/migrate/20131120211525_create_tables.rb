class CreateTables < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
    	t.string :name, null: false

    	t.timestamps
    end

    create_table :rounds do |t|
        t.string :name, null: false

        t.integer :episode_id
        t.foreign_key :episodes

        t.timestamps
    end

	create_table :chefs do |t|
    	t.string :name, null: false

        t.integer :round_id
        t.foreign_key :rounds

    	t.timestamps
    end

    create_table :dishes do |t|
    	t.string :name, null: false
        t.string :round, null: false
        t.integer :score1
        t.integer :score2
        t.integer :score3

    	t.integer :chef_id
    	t.foreign_key :chefs

    	t.timestamps
    end
  end
end
