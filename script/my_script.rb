require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: 'contact_shares/2'
  # query_values: {
  #   'id' => 1
  # }
).to_s

puts RestClient.delete(url, {})