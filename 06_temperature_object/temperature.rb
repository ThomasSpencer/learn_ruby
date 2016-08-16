require 'pry'

class Temperature

  attr_writer :temperature

  def initialize(temp_hash)
    @temperature = temp_hash
  end

  def to_celsius
    if @temperature.key?(:f)
      temp_in_c = (@temperature.fetch(:f) - 32) * 5.0 / 9.0
      return temp_in_c
    else
      return @temperature.fetch(:c)
    end
  end

  def to_fahrenheit
    if @temperature.key?(:c)
      temp_in_f = (((@temperature.fetch(:c) * 9.0) / 5.0) + 32)
      return temp_in_f
    else
      return @temperature.fetch(:f)
    end
  end

  def self.in_fahrenheit(temperature)
    Temperature.new({f: temperature})
  end

  def self.in_celsius(temperature)
     Temperature.new({c: temperature})
  end

end

class Celsius < Temperature

  def initialize(temperature)
    @temperature = {c: temperature}
  end
end

class Fahrenheit < Temperature

  def initialize(temperature)
    @temperature = {f: temperature}
  end

end
