class AddMoreValuesToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :capital, :string
    add_column :accounts, :guranted, :string
    add_column :accounts, :gross_pl, :string
    add_column :accounts, :roi, :string
    add_column :accounts, :net_pl, :string
  end
end
