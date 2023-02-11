class Gadget
  attr_accessor :username
  attr_writer :password
  attr_reader :production_number

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("A".."Z").to_a.sample}#{rand(100..999)} "
  end

  def info
    "User name: #{@username} - Password: #{@password} - Production nunmber: #{@production_number}. Made by: #{self.class}"
  end
end

phone = Gadget.new("user_number01", "JamesBond")
laptop = Gadget.new("user_number02", "007Bond")
puts phone.info
puts laptop.info