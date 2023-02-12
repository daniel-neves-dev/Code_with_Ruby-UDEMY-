class Gadget

  attr_accessor :username, :password
  attr_reader :serial_number, :apps 

  def initialize(username, password)
    @username = username
    @password = password
    @serial_number = atomatic_generate
    @apps = []
  end

  def atomatic_generate
    digits = rand(100..999)
    letters = ("A".."Z").to_a.sample(2).join
    year = Time.now.year
    "#{digits}#{letters}#{year}"
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  #Reseting password
  def reseting_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
  def password=(new_password)
    @password = new_password if reseting_password(new_password)
  end

  #General gadget information
  def info
    "User name: #{self.username} - Password: #{self.password} - Serial number: #{self.serial_number} - Made by: #{self.class}" 
  end
end

laptop = Gadget.new("Daniel963","oliveira123" )
puts laptop.info
