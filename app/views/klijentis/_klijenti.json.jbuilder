json.extract! klijenti, :id, :ime, :prezime, :broj, :created_at, :updated_at
json.url klijenti_url(klijenti, format: :json)
