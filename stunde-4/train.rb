class Train

# number, type, numvagons
# upspeed, downspeed, currentspeed, countvagons, addvagons (only stop), 
# add route, move to route, show stations 

attr_accessor :speed

attr_reader :number,:type, :count_wagon, :route, :staition, :wagons

  def initialize(number, type)
    @wagons = []
    @number = number
    @type = type
    @speed = 0
  end

  def up(speed)
    self.speed += speed
  end

  def down(speed)
    if self.speed >= speed
      self.speed = 0
    else
      self.speed -= speed
    end
  end

  def start
    self.speed = 10
  end

  def stop
    self.speed = 0
  end

  def add(wagon)
    #self.count_wagon += 1 if speed == 0 
    self.wagons << wagon if (speed == 0 && self.type == wagon.type)
  end

  def del
    self.wagons.delete(wagon) if speed == 0
  end

  def add_route(route)
    if route.defined?
      self.route = route
      #self.staition = route.station[0]
    end
  end

  def move_next
    self.staition = self.route[index(self.station) + 1]
    start
  end

  def move_to(station)
    self.staition = staition
    start
  end

  def show(type_s)
    case type_s
    when "current"
      #puts "#{ route[index(station)].name }" # :-)  station.name
    when "buck"
      #puts "#{ route[index(station) - 1].name }" if route[index(station) > 0
    when "next"
      #puts "#{ route[index(station) + 1].name }" if route[index(station) <= route.length
    end
  end

end

