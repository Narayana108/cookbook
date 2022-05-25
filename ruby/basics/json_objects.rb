require 'json'

characters = {
"Dota1": {
    "Windrunner": "Elf", 
    "Lion": "Demon", 
    "Mirana": "Elf", 
    "Abbadon": "Undead"},
"Dota2": {
    "Wraith King": "Undead",
    "Wins": 108
}}.to_json

#object = JSON.parse(json, object_class: OpenStruct)
#puts object.response.body.type

object = JSON.parse(characters, object_class: OpenStruct)
puts object.Dota2