class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :video
      t.string :main_picture
      t.integer :goal_amount
      t.string :description
      t.string :marckdown
      t.integer :days_to_go
      t.boolean :status
      t.boolean :outstanding
      t.string :title
      t.references :user
      t.references :category



      t.timestamps
    end
  end
end
