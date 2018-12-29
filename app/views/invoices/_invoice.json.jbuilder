json.extract! invoice, :id, :amount, :uuid, :paid, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
