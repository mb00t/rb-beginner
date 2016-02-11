require_relative 'wagon.rb'

class CargoWagon < Wagon
  # class

  attr_accessor :free, :volume
  attr_reader :num

  def initialize(volume)
    @type = :cargo
    @volume = volume
    @free = volume
    @num = rand(1000)
  end

  def busy
    volume - free
  end

  def add
    self.free -= 1 if free > 0
  end
end
