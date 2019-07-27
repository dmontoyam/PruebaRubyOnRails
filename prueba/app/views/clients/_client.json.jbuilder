json.extract! client, :id, :firstName, :secName, :firstLstname, :secLstname, :city, :phone, :email, :address, :created_at, :updated_at
json.url client_url(client, format: :json)
