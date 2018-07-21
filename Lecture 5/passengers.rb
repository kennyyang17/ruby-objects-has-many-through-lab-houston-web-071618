class Passenger

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def tickets
        Ticket.all.select do |ticket|
            ticket.passenger == self
        end
    end

    def flights
        #figure out which tickets belong to this passenger and grab
        tickets.map do |tickee|
            tickee.flight
        end
    end

    def airlines
        flights.map do |flight|
            flight.airline
        end
    end


end
