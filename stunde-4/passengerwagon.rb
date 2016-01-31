require_relative 'wagon.rb'

class PassengerWagon < Wagon

attr_accessor :free, :places
attr_reader :num

  def initialize(places)
    @type = :passenger
    @places = places
    @free = places
    @num = rand(1000)
  end

  def busy
    places - free
  end

  def add
    self.free -= 1 if free > 0 
  end

end
