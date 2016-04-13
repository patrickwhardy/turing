class AddNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :text
  end
end
