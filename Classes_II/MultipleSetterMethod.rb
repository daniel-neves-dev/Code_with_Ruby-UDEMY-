class Gadget

  attr_accessor :username, :password
  attr_reader :production_number

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = automatic_production_number
  end

  def automatic_production_number
    digits = rand(100..999)
    alphabet = ("A".."Z").to_a.sample(2).join
    year = 2023
    "#{digits}#{alphabet}#{year}"
  end

  def info
    "User name: #{self.username} - Password: #{self.password} - Production number: #{self.production_number}"
  end

end

phone = Gadget.new("Oliveira", "JamesBond963")
puts phone.info