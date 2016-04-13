class AddNameAndImageToFourteeners < ActiveRecord::Migration
  def change
    add_column :fourteeners, :name, :string
    add_column :fourteeners, :image, :string
  end
end
