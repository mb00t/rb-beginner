require_relative 'railwaystation.rb'
require_relative 'train.rb'
require_relative 'route'
require_relative 'passengerwagon.rb'
require_relative 'cargowagon.rb'

@UI_B = "\x1b[0m"
@ui_a = {:red => "\x1b[31m", :blue => "\x1b[34m", :green => "\x1b[32m"}

def add_station
  # добавить станцию
end

def create_train
  # создать поезд
end

def add_wagon
  # добавить вагон
end

def delete_wagon
  # отцепить вагон
end

def add_train_to
  # поместить поезд на станцию
end

def show_stations
  # показать список станций
end

def show_train
  # показать поезда на станции
end

def color(text)
  puts "#{ @ui_a[:green] + text + @UI_B}"
end

color "Hello"
puts @ui_a[:green]

