class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      t.text :project_description
      t.string :github_links
    end
  end

  def down
    drop_table :students
  end

end
