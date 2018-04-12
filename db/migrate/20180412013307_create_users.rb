class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :image
      t.string :password
      t.string :role
      t.string :mail
      t.string :description

      t.timestamps
    end
  end
end
