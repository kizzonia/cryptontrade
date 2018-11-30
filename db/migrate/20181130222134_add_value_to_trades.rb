class AddValueToTrades < ActiveRecord::Migration[5.1]
  def change
    add_column :trades, :account_id, :integer
  end
end
