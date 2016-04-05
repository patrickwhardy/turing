class AddColumntoStudents < ActiveRecord::Migration
  def change
    add_column :students, :is_alumni, :boolean
    change_column_default :students, :is_alumni, false
  end
end
