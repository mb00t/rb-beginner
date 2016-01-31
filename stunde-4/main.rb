require_relative 'maker.rb'
require_relative 'railwaystation.rb'
require_relative 'train.rb'
require_relative 'route'
require_relative 'passengerwagon.rb'
require_relative 'cargowagon.rb'

# initialize

VOL = 40
PLC = 80

i = 0
stations = []
trains = []
routes = []
cwagons = []
pwagons = []
name_stations = ["Sain-Petersburg", "Moscow", "Novgorod"]
name_trains = {"psw-123" => :passenger, "psw-124" => :passenger, 
"crg-123" => :cargo, "crg-124" => :cargo}
name_names = ["psw-123", "psw-124", "crg-123", "crg-124", "Noname"]

# fill for test

name_stations.each  do |name|
    stations << RailwayStation.new(name)
  end

name_trains.each do |name, type|
    trains << Train.new(name, type)
      2.times do |type|
        pwagons << PassengerWagon.new(PLC)
        cwagons << CargoWagon.new(VOL)
        rand(PLC).times { pwagons.last.add }
        rand(VOL).times { cwagons.last.add }
      end
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

stations.each do |station|
  station.add(trains[i])
  i += 1
end

stations.last.add(trains.last)


# test lession 6

puts "Routes"
routes.each do |stations|
    stations.show
    puts
  end

#puts "Find object"
#name_names.each { |name| puts "?? #{Train.find(name)}" if name != nil }

#lession 7

RailwayStation.all.each  do |station|
  puts "- Station '#{station.name}'"
    station.trains.each do |train|
      puts "-- Train '#{train.number}'"
        train.wagons.each do |wagon|
          puts "--- wagon #{wagon.num} type #{wagon.type}, free #{wagon.free}, occuped #{wagon.busy} "
        end
    end
end

#lession 7

