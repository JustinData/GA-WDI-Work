class AddTimestampsToStudents < ActiveRecord::Migration
  
  def self.up # Or `def up` in 3.1
      change_table :students do |t|
          t.timestamps
      end
  end

  def self.down # Or `def down` in 3.1
      remove_column :students, :created_at
      remove_column :students, :updated_at
  end
end