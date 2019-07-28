require 'net/http'
require 'json'
require 'pry'

Country.destroy_all

countryapi_url = 'https://restcountries.eu/rest/v2/all'
uri = URI(countryapi_url)

response = Net::HTTP.get(uri)
data = JSON.parse(response)

data.each do |indcountry|
   country = Country.new
   country.name = indcountry["name"]
   country.region = indcountry["region"]
   country.subregion = indcountry["subregion"]
   indcountry["currencies"].each do |name|
      country.currency = name["name"]
   end 
   country.save
end 

puts "done!"