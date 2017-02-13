require 'net/http'
require 'json'

# stringresult = Net::HTTP.get('http://pokeapi.co/', '/api/v2/pokemon/1/')

uri = URI('http://pokeapi.co/api/v2/pokemon/1/')
stringresult = Net::HTTP.get(uri) # => String

jsonresult = JSON.parse(stringresult)

speed = jsonresult["stats"][0]["base_stat"]

puts speed