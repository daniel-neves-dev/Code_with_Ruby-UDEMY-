class Gadget

  attr_accessor :username #read and chage variable
  attr_writer :password #only change variable
  attr_reader :production_number #only read  variable

  def initialize
    @username = "User#{rand(1..99)}"
    @password = "topsecret"
    @production_number = "#{("A".."Z").to_a.sample}#{rand(99..100)}"
  end

  def info
    "User name: #{@username} - Password: #{@password} - Production number: #{@production_number}."
  end
end

phone = Gadget.new

puts 

p phone.info
puts 
phone.username = "I am the new user"
phone.password = "JamesBond"
puts phone.info