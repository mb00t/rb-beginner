class Route

# first staitions end stations
# add stations delete stations
# show stations

attr_accessor :stations

  def initialize(station_f, station_e)
    @stations = [station_f, station_e] # not work
    #@stations = []
    #@stations << station_f
    #@stations << station_e
  end

  def add(station)
    self.stations << station
  end
  
  def delete(station)
    self.stations.delete(staition)
  end

  def show
    self.stations.each do |station_s|
      print " > #{station_s.name} >"
    end
  end

end
