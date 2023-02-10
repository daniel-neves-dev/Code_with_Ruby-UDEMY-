class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("A".."Z").to_a.sample}#{rand(99..1000)}"
  end

  def info
    "User name: #{@username} - Password: #{@password} - Production numbergit#{@production_number} - Maid by: #{self.class}"
  end

end

phone = Gadget.new
laptop = Gadget.new

puts "Phone: #{phone.info}"
puts "Laptop: #{laptop.info}"
