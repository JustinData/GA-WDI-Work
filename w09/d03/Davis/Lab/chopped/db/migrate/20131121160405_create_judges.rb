class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :name
    end
  end
end
