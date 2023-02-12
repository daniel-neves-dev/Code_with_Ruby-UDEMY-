class Gadget

  attr_accessor :username, :password
  attr_reader :production_number

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = automatic_production_number
  end

  #Reseting password
  def password = (new_password) 
    @password = new_password if validade_password(new_password)
  end

  def automatic_production_number
    digits = rand(100..999)
    alphabet = ("A".."Z").to_a.sample(2).join
    year = 2023
    "#{digits}#{alphabet}#{year}"
  end
  #Gadget informations
  def info
    "User name: #{self.username} - Password: #{self.password} - Production number: #{self.production_number}"
  end

  #Reseting password
  def validade_password(new_password) 
    new_password.is_a(String) && new_password.length >= 6 && new_password =~ /\d/
  end

end

phone = Gadget.new("Oliveira", "JamesBond963")
puts phone.info