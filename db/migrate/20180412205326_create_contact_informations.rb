class CreateContactInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_informations do |t|
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
