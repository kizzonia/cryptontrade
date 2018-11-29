class AddParamsToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :ctp, :integer
    add_column :accounts, :closing_b, :integer
    add_column :accounts, :opening_b, :integer
    add_column :accounts, :profit_bf, :integer
    add_column :accounts, :commission, :integer

  end
end
