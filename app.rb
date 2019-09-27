require 'sinatra'
require 'dotenv/load'

get '/' do
  erb :new
end

post '/leads' do
  store_lead_in_database
  post_lead_from_database_to_crm
  @booking_uri = build_booking_uri
  erb :schedule
end

def build_booking_uri
  uri = base_booking_uri
  uri.query = URI.encode_www_form(query_params)
  uri
end

def base_booking_uri
  URI("#{ENV['BOOKING_BASE_URL']}/p/locations/#{ENV['LOCATION_UUID']}/bookings/ba/new")
end

def query_params
  params.merge(campaign_id: ENV['CAMPAIGN_ID'])
end

def store_lead_in_database
  # No-op
end

def post_lead_from_database_to_crm
  # No-op
end
