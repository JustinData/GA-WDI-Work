class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :judge_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
