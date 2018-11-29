class AddMoreValuesToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :capital, :integer
    add_column :accounts, :guranted, :integer
    add_column :accounts, :gross_pl, :integer
    add_column :accounts, :roi, :integer
    add_column :accounts, :net_pl, :integer
  end
end
