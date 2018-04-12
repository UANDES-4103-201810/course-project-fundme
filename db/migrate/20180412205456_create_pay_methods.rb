class CreatePayMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :pay_methods do |t|
      t.integer :card_number
      t.string :name_in_card
      t.date :expiration_date
      t.string :type

      t.timestamps
    end
  end
end
