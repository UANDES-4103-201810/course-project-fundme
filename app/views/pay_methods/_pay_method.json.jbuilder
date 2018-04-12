json.extract! pay_method, :id, :card_number, :name_in_card, :expiration_date, :type, :created_at, :updated_at
json.url pay_method_url(pay_method, format: :json)
