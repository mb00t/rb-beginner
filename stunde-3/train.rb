class RailwayStations

# name
# add train, show all train, show type train
# forward train with delete from stations

attr_accessor :trains

attr_reader :name

  def initialize(name = "Stations1")
    @name = name
    @trains = train
  end

  def add(train)
    self.trains << train
  end

  def delete(train)
   self.trains.delete(train)
  end

  def show
    self.trains.each do |train_s|
      puts train_s
    end  
  end

# !! doublicate code !! 
  def show(type_t)
    self.trains.each do |train_s|
      puts train_s if train.type == type_t
    end

  def depart(train)
    delete(train) if self.trains.length > 0  # .any?   !.emty?
    # code send next stations. i not know array stations.
   end

end

################### cut

class Route

# first staitions end stations
# add stations delete stations
# show stations

attr_reader :stations[] # more info in this macros! question type pointer

  def initialize(station_f = "StationFirst", station_e = "StationEnd")
    self.stations = [station_f, station_e] if (station_f.defined?  && station_e.defined?)
    # puts "error, object staitions not defined"
  end

  def add(station)
    self.stations << staition if station.defined?
    # puts "error, object staitions not defined"
  end
  
  def delete(station)
    self.stations.delete(staition) if station.defined?
    # puts "error, object staitions not defined"
  end

  def show
    self.stations.each do |station_s|
      print "#{station_s.name}"
    end
  end

end

################### cut

class Train

# number, type, numvagons
# upspeed, downspeed, currentspeed, countvagons, addvagons (only stop), 
# add route, move to route, show stations 

attr_accessor :speed

attr_reader :number,:type, :count_wagon, :route, :staition

  def initialize(number = "Train", type = true, count_wagons = 1)
    #dublicate self !
    self.number = number
    self.type = type
    self.count_wagons =  count_wagons
    self.speed = 0
  end

  def up(speed)
    self.speed += speed
  end

  def down(speed)
    if self.speed >= speed
      then self.speed = 0
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

  def add
    self.count_wagon += self.count_wagon if self.speed == 0
  end

  def del
    self.count_wagon -= self.count_wagon if self.speed == 0 && self.count_wagon > 0
  end

  def add_route(route)
    if route.defined?
      self.route = route
      self.staition = self.route.station[0]
    end
  end

  def move_next
    self.staition = self.route[index(self.station) + 1]  # ugly !
    start
  end

  def move_to(station)
    self.staition = staition
    start
  end

  def show(type_s)
    # uglu ugly ugly
    node = self.station
    case type_s
    when "current"
      puts "#{ self.route[index(self.station)].name }"  # :-)  self.station.name
    when "buck"
       puts "#{ self.route[index(self.station) - 1].name }" if self.route[index(self.station) > 0
    when "next"
       puts "#{ self.route[index(self.station) + 1].name }" if self.route[index(self.station) <= self.route.length
    end
  end

end
