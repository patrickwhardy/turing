class AddEnrollmentIdToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :enrollment, index: true, foreign_key: true
  end
end
