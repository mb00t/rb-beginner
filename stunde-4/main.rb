require_relative 'maker.rb'
require_relative 'railwaystation.rb'
require_relative 'train.rb'
require_relative 'route'
require_relative 'passengerwagon.rb'
require_relative 'cargowagon.rb'

# initialize

stations = []
trains = []
routes = []
cwagons = []
pwagons = []
name_stations = ["Sain-Petersburg", "Moscow", "Novgorod"]
name_trains = {"Пассажирский 1" => :passenger, "Пассажирский 2" => :passenger, 
"Грузовой 1" => :cargo, "Грузовой 2" => :cargo}
name_names = ["Пассажирский 1", "Пассажирский 2", "Грузовой 1", "Грузовой 2", "Noname"]

# fill

name_stations.each  do |name|
    stations << RailwayStation.new(name)
  end

name_trains.each do |name, type|
    trains << Train.new(name, type)
  end

4.times do |type|
    pwagons << PassengerWagon.new
    cwagons << CargoWagon.new
  end

trains.each do |train|
#small test
    pwagons.each do |wagon|
        train.add(wagon)
      end
    cwagons.each do |wagon|
        train.add(wagon)
      end
  end

3.times do |n|
    routes << Route.new(stations[0], stations[1])
    routes[n].add(stations[2])
  end

# see

puts "Staions"
stations.each do |name|
    puts " - #{name.name}"
  end

puts "Trains"
trains.each do |name|
    puts " - #{name.number}, #{name.type}"
      name.wagons.each do |namew|
          print "+ #{namew.type} +"
        end
      puts
  end

puts "Routes"
routes.each do |stations|
    stations.show
    puts
  end

RailwayStation.all

puts "Find object"
name_names.each { |name| puts "?? #{Train.find(name)}" if name != nil }

#test

