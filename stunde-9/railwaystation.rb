class RailwayStation
  attr_accessor :trains

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @trains = []
    validate!
    @@all << self
  end

  def add(train)
    trains << train
  end

  def delete(train)
    trains.delete(train)
  end

  def list(&_block)
    trains.each do |train|
      yield(train)
    end
  end

  def show(type_t = nil)
    if type_t.nil?
      trains.each do |train_s|
        puts train_s
      end
    else
      trains.each do |train_s|
        puts train_s if train.type == type_t
        # correct to print type and name train
      end
    end
  end

  def depart(train)
    delete(train) if trains.any? > 0
  end

  protected

  def validate!
    raise 'error create - name is empty' if name.empty?
  end
end
