class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.string :currency
      t.string :deposit
      t.datetime :expiration
      t.string :status
      t.string :tradetype
      t.string :entry
      t.string :rate
      t.string :return

      t.timestamps
    end
  end
end
