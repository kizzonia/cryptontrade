class AddStatusToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :status, :boolean
    add_column :accounts, :understood, :boolean
  end
end
