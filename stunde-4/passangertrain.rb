require_relative 'train'

class PassangerTrain < 'Train'

  def initialize
    super
    @type = :passenger
  end
end