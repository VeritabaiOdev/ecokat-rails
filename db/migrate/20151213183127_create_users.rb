class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :telephone
      t.string :country
      t.string :mail
      t.string :birth_date

      t.timestamps null: false
    end
  end
end
