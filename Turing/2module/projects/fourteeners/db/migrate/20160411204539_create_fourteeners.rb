class CreateFourteeners < ActiveRecord::Migration
  def change
    create_table :fourteeners do |t|
      t.integer :elevation
      t.references :county, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
