class Gadget

  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_prodnumber
  end

  #Generating production number
  def generate_prodnumber
    digits = rand(100..999)
    lethers = ("A".."Z").to_a.sample(2).join
    year = 2023
    "#{digits}#{lethers}#{year}"
  end

  #General gadget informations
  def info
    "User name: #{self.username} - Password: #{self.password} - Production number: #{self.production_number}"
  end
  
end


phone = Gadget.new("newuser002", "standardpassower001")
puts phone.info