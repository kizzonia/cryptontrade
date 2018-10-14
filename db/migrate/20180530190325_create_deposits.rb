class CreateDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :deposits do |t|
      t.string :amount
      t.string :payment_type
      t.string :email
      t.string :plan
      t.integer :user_id

      t.timestamps
    end
  end
end
