class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :name
      t.integer :low_temp
      t.integer :high_temp
      t.integer :wind_speed
      t.integer :cloud_cover
      t.string :description

      t.timestamps null: false
    end
  end
end
