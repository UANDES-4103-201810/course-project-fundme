class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :status
      t.string :category
      t.integer :days_to_go
      t.integer :goal_amount
      t.text :description
      t.text :markdown

      t.timestamps
    end
  end
end
