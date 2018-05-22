class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.integer :amount
      t.date :estimated_delivery_date
      t.string :description
      t.references :project

      t.timestamps
    end
  end
end
