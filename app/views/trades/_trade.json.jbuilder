json.extract! trade, :id, :user_id, :currency, :deposit, :expiration, :status, :tradetype, :entry, :rate, :return, :created_at, :updated_at
json.url trade_url(trade, format: :json)
