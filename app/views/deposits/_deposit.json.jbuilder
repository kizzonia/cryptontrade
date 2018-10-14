json.extract! deposit, :id, :amount, :payment_type, :email, :plan, :user_id, :created_at, :updated_at
json.url deposit_url(deposit, format: :json)
