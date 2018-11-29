class AddStatusToWithdraws < ActiveRecord::Migration[5.1]
  def change
    add_column :withdraws, :status, :boolean
  end
end
