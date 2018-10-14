class CreateWithdraws < ActiveRecord::Migration[5.1]
  def change
    create_table :withdraws do |t|
      t.string :amount
      t.string :payment_method
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
