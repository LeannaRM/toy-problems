require 'net/http'
require 'json'
require 'pry'


uri = URI('https://api.darksky.net/forecast/fe164be1a0c80368bbb1bc642fc9ea57/41.2524,-95.9980,2017-02-14T09:00:00')
stringresult = Net::HTTP.get(uri) # => String

jsonresult = JSON.parse(stringresult)

highTemp = jsonresult["daily"]["data"][0]["temperatureMax"]
lowTemp = jsonresult["daily"]["data"][0]["temperatureMin"]


uri2 = URI('https://api.darksky.net/forecast/fe164be1a0c80368bbb1bc642fc9ea57/41.2524,-95.9980,2017-02-13T09:00:00')
stringresult2 = Net::HTTP.get(uri2) # => String

jsonresult2 = JSON.parse(stringresult2)

yesterdayhighTemp = jsonresult2["daily"]["data"][0]["temperatureMax"]

if highTemp > yesterdayhighTemp
	comparison = "warmer"
else
	comparison = "colder"
end

precipChance = jsonresult["daily"]["data"][0]
binding.pry

# if precipChance > 60
# 	umbrellaStatement = "Bring an umbrella."
# elsif precipChance > 30
# 	umbrellaStatement = "Probably need an umbrella."
# else
# 	umbrellaStatement = "No umbrella needed."
# end


puts "Today's high is " + highTemp.to_s
puts "Today's low is " + lowTemp.to_s
puts "It will be " + comparison + " today than yesterday"
puts precipChance