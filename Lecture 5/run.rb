require 'pry'
require_relative 'flights'
require_relative 'passengers'
require_relative 'tickets'

jkf_hobby_united = Flight.new("united", "JFK", "HOU")
bush_dal_spirit = Flight.new("Spirit", "IAH", "DAL")
hobby_lax_southwest = Flight.new("Southwest","HOU", "DAL")

graham = Passenger.new("Graham")
humzah = Passenger.new("Humzah")
josh = Passenger.new("Josh")
michael = Passenger.new("Michel")

ticket_to_la_graham = Ticket.new(graham, hobby_lax_southwest)
ticket_to_houston_graham= Ticket.new(graham, jkf_hobby_united)
ticket_to_dal_humzah = Ticket.new(humzah, bush_dal_spirit)
#graham.add_ticket(ticket_to_houston_graham)
#graham.add_ticket(ticket_to_la_graham)
graham.flights
#graham.delete_ticket(ticket_to_la_graham)

#ticket_to_houston_graham.change_passenger(josh)

jkf_hobby_united.passengers
Ticket.all

graham.passenger_manifest
binding.pry
