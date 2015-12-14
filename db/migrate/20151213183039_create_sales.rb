class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.string :name
      t.integer :number
      t.float :cost

      t.timestamps null: false
    end
  end
end
