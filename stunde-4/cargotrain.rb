require_relative 'train.rb'

class CargoTrain < train

  def initialize
    super
    @type = :cargo
  end

end