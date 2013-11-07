class CreateTasks < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task, null: false
      t.boolean :completed, default: false
    end
  end
end
