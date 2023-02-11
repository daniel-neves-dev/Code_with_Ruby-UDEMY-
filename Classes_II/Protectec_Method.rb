class Car
  def initialize(age, miles)
    base_value = 20000
    age_deduction = age*1000
    miles_deduction = miles/10
    @value =  base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better" : "Your car is worse"
  end

  def info
    "#{self.class} value is #{self.value}"
  end

  protected
  attr_reader :value

end

civic = Car.new(3, 30000)
fiat = Car.new(1,20000)

puts civic.compare_car_with(fiat)
puts fiat.compare_car_with(civic)
#puts civic.value #Error, protected method
puts 
puts civic.info
puts fiat.info
