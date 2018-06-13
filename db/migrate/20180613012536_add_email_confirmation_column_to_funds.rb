class AddEmailConfirmationColumnToFunds < ActiveRecord::Migration[5.1]
  def change
    add_column :funds, :email_confirmation, :boolean, :default => false
    add_column :funds, :confirm_token, :string
  end
end
