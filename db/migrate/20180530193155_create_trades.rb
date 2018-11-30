class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.integer :capital
      t.integer :guranted
      t.integer :gross_pl
      t.integer :net_pl
      t.integer :roi
      t.integer :ctp
      t.integer :closing_b
      t.integer :opening_b
      t.integer :profit_bf
      t.integer :commission

      t.timestamps
    end
  end
end
