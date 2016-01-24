class RailwayStation

# name
# add train, show all train, show type train
# forward train with delete from stations

attr_accessor :trains

attr_reader :name

@@all = [] # не уверен что объявление необходимо

def self.all
  puts "All stations"
  @@all.each do |station|
      puts "!- #{station.name}"
    end
end

  def initialize(name)
    @name = name
    @trains = []
    @@all << self
  end

  def add(train)
    self.trains << train
  end

  def delete(train)
   trains.delete(train)
  end

  def show(type_t = nil)
    if type_t == nil
    trains.each do |train_s|
        puts train_s
      end
    else
      trains.each do |train_s|
        puts train_s if train.type == type_t
        #correct to print type and name train
      end
    end  
  end

  def depart(train)
    delete(train) if trains.length > 0  # .any?   !.emty?
    # code send next stations. i not know array stations.
   end

end
