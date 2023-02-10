class Gadget
  def initialize
    @username = "User #{rand(1..100)}" #random numbers - instance variables
    @password = "topsevret" #fixed variable
    @production_number = "#{("a".."z").to_a.sample}-#{rand(99..1000)}"
  end
end

phone = Gadget.new #new object
laptop = Gadget.new

p phone.instance_variables
p laptop.instance_variables