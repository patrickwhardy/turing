class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.references :author, index: true, foreign_key: true
    end
  end
end
