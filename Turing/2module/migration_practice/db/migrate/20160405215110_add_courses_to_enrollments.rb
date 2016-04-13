class AddCoursesToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :courses, index: true, foreign_key: true
  end
end
