class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.integer :amount
      t.references :user
      t.references :project
      t.references :pay_method
      t.timestamps
    end
  end
end
