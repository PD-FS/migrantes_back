json.extract! donation, :id, :need_id, :user_id, :donate, :date_donation, :created_at, :updated_at
json.url donation_url(donation, format: :json)
