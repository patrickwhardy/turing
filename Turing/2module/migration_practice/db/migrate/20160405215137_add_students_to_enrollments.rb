class AddStudentsToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :students, index: true, foreign_key: true
  end
end
