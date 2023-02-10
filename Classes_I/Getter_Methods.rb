class Gadget
  def initialize
    @username = "User#{rand(1..99)}"
    @password = "topsecret"
    @production_number = "#{("A".."Z").to_a.sample}#{rand(99..1000)}"
  end

  def username
    @username
  end

  def production_number
    @production_number
  end
end

laptop = Gadget.new

puts
puts laptop.username
puts laptop.production_number
puts
puts laptop.password #error