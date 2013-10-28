class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      t.text :project_description
      t.string :github_link
    end
  end

  def drop
    drop_table :students
  end
end
