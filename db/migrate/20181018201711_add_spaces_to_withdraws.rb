class AddSpacesToWithdraws < ActiveRecord::Migration[5.1]
  def change
    add_column :withdraws, :bankName, :string
    add_column :withdraws, :accountNumber, :string
    add_column :withdraws, :routineNumber, :string
  end
end
