class CreateTableCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.column :name, :text
    end
  end
end
