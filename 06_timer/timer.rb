class Timer
  attr_accessor :seconds, :time_string

  def initialize()
  	@seconds = 0
  end

  def seconds=(value)
  @seconds = value
  end

  def time_string()
  	if seconds == 0
  		@time_string = "00:00:00"
  	else
	  	seconds_string = make_digit_string(seconds % 60)
	  	minutes_string = make_digit_string((seconds / 60) % 60)
	  	hours_string = make_digit_string((seconds / 60) / 60)
	  	@time_string = hours_string + ":" + minutes_string + ":" + seconds_string
  	end
  end

  def make_digit_string(int)
  	int_string = int.to_s
  	if int < 10
		return "0" + int_string
	else
		int_string
	end
  end

end
