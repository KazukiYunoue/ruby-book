# Kaisatsu machine Class
class Gate
  STATIONS = [:umeda, :juso, :mikuni] # :nodoc:
  FARES = [150, 190] # :nodoc:

  # Create Gate Object
  # ==== args
  # * +name+ - station name
  def initialize(name)
    @name = name
  end

  # Enter station
  # ==== args
  # * +ticket+ - ticket
  def enter(ticket)
    ticket.stamp(@name)
  end

  # Exit station
  # ==== args
  # * +ticket+ - ticket
  # ==== return
  # * +boolean+ - if enough +true+, if not enough +false+
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
