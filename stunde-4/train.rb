class Train
  # number, type, numvagons
  # upspeed, downspeed, currentspeed, countvagons, addvagons (only stop),
  # add route, move to route, show stations

  include Maker

  NUMBER_FORMAT = /^([a-z\d]){3}-*([a-z\d]){3}$/i

  attr_accessor :speed

  attr_reader :number, :type, :count_wagon, :route, :staition, :wagons

  @@numbers = {}

  def self.find(number)
    @@numbers[number]
  end

  def initialize(number, type)
    @number = number
    @type = type
    @speed = 0
    @wagons = []
    validate!
    @@numbers[number] = self
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
    # self.count_wagon += 1 if speed == 0
    # rescue
    raise 'error-invalid types' if wagon.type != :passenger && wagon.type != :cargo
    wagons << wagon
  end

  def del
    wagons.delete(wagon) if speed == 0
  end

  def list(&_block)
    wagons.each do |wagon|
      yield(wagon)
    end
  end

  def add_route(route)
    self.route = route if route.defined?
  end

  def move_next
    self.staition = route[index(station) + 1]
    start
  end

  def move_to(_station)
    self.staition = staition
    start
  end

  def show(type_s)
    case type_s
    when 'current'
      # puts "#{ route[index(station)].name }"
    when 'buck'
      # puts "#{ route[index(station) - 1].name }"
    when 'next'
      # puts "#{ route[index(station) + 1].name }"
    end
  end

  def valid?
    validate!
  rescue
    false
    # end #
  end

  protected

  def validate!
    raise 'error- number is emty' if number.empty?
    raise 'error- invalid number format' if number !~ NUMBER_FORMAT
    raise 'error- ivalid type train' if type != :passenger && type != :cargo
  end
end
