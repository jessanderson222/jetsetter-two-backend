require 'rest-client'
require 'json'
require 'pry'

Country.destroy_all

binding.pry

countryapi_url = 'https://restcountries.eu/rest/v2/all'
response = RestClient.get(countryapi_url)
data = JSON.parse(response)
countrydata = data["Response"]

countrydata.each do |indcountry|
   country = Country.new
   country.name = indcountry["name"]
   country.region = indcountry["region"]
   country.subregion = indcountry["subregion"]
   # country.currency = indcountry["CurrencyName"]
   country.save
end 

puts "done!"