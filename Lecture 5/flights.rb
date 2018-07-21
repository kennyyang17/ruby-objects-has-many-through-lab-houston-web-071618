require 'pry'
class Flight

    attr_reader :airline

    def initialize(airline, origin, destination )
        @airline = airline
        @origin = origin
        @destination = destination
    end

    #return an array of tickets for flight
    def tickets
        Ticket.all.select do |ticket|
            ticket.flight == self
        end
    end

    #return array of passengers ticketed on this flight


    def passengers
        tickets.map do |ticket|
            ticket.passenger
        end
    end

    #an array of pasenger names for this flight
    def passenger_manifest
       passengers.map do |passenger|
            passenger.name
            binding.pry
        end
    end

end
