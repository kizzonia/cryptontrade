json.extract! withdraw, :id, :amount, :payment_type, :email, :user_id, :created_at, :updated_at
json.url withdraw_url(withdraw, format: :json)
