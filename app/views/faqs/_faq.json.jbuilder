json.extract! faq, :id, :title, :body, :slug, :created_at, :updated_at
json.url faq_url(faq, format: :json)
