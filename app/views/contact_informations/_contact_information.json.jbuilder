json.extract! contact_information, :id, :address, :phone_number, :created_at, :updated_at
json.url contact_information_url(contact_information, format: :json)
