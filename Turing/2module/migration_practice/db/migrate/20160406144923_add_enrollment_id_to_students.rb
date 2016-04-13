class AddEnrollmentIdToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :enrollment, index: true, foreign_key: true
  end
end
