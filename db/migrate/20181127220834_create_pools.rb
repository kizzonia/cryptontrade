class CreatePools < ActiveRecord::Migration[5.1]
  def change
    create_table :pools do |t|
#      t.references :account, foreign_key: true
      t.integer :pool_ob
      t.integer :pool_cl
      t.integer :pool_pl
      t.integer :tob

      t.timestamps
    end
  end
end
