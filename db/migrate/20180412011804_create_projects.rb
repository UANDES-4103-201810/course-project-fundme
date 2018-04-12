class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :image
      t.string :video
      t.string :main_picture
      t.integer :goal_amount
      t.string :category
      t.string :description
      t.string :marckdown
      t.integer :days_to_go
      t.boolean :status
      t.string :title

      t.timestamps
    end
  end
end
