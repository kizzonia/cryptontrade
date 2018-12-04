class AddValuesToWithdraws < ActiveRecord::Migration[5.1]
  def change
    add_column :withdraws, :acctName, :string
    add_column :withdraws, :bitcoin, :string
  end
end
