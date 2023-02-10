class Gadget
  def initialize
    @username = "User#{rand(1..99)}"
    @password = "topsecret"
    @production_number = "#{("A".."Z").to_a.sample}#{rand(99..1000)}"
  end

  def username #Getter method 'only read'
    @username
  end

  def password #Getter method 'only read'
    @password
  end

  def password=(new_password) #Setter method 'change variable'
    @password = new_password
  end
end

laptop = Gadget.new

puts laptop.password
laptop.password = "JamesBond"
puts laptop.password