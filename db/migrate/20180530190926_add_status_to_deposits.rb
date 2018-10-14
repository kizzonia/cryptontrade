class AddStatusToDeposits < ActiveRecord::Migration[5.1]
  def change
    add_column :deposits, :status, :boolean
  end
end
