class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :password
      t.string :image
      t.string :role
      t.string :mail
      t.text :description

      t.timestamps
    end
  end
end
