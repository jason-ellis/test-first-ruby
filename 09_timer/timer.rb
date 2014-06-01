class Timer
  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @hours += seconds / 3600
    seconds > 3600 ? @minutes += seconds / 60 % 60 : @minutes += seconds / 60
    @seconds += seconds % 60
  end

  def time_string
    "#{@hours.to_s.rjust(2, '0')}:#{@minutes.to_s.rjust(2, '0')}:#{@seconds.to_s.rjust(2, '0')}"
  end
end