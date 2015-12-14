class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.references :author, index: true, foreign_key: true
      t.integer :page_num
      t.text :content
      t.string :published_date
      t.references :category, index: true, foreign_key: true
      t.string :publisher
      t.string :language
      t.integer :counter
      t.integer :stock
      t.float :cost

      t.timestamps null: false
    end
  end
end
