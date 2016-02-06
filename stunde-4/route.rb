class Route
  # first staitions end stations
  # add stations delete stations
  # show stations

  attr_accessor :stations

  def initialize(station_f, station_e)
    @stations = [station_f, station_e]
    validate!
  end

  def add(station)
    stations << station
  end

  def delete(_station)
    stations.delete(staition)
  end

  def show
    stations.each do |station_s|
      print " > #{station_s.name} >"
    end
  end

  protected

  def validate!
    raise 'error - stations is nil' if stations[0].nil? || stations[1].nil?
  end
end
