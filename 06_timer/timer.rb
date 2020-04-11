# frozen_string_literal: true

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds / 60) % 60
    seconds = @seconds % 60
    "#{pad_num(hours, 2)}:#{pad_num(minutes, 2)}:#{pad_num(seconds, 2)}"
  end

  def pad_num(num, digits)
    num_s = num.to_s
    zeroes = "0" * (digits - num_s.length)
    "#{zeroes}#{num_s}"
  end
end
