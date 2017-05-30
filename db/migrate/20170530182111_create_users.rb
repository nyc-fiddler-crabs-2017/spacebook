class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.integer :age, null: false
      t.string :city, null: false
      t.timestamps
    end
  end
end
