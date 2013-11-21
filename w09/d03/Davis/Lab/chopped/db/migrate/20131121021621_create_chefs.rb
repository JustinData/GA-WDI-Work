class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
    end
  end
end
