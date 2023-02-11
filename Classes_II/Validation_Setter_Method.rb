class Gadget

  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
  end

  def password=(new_password)
    @password = new_password if validade_password(new_password)
  end

  def validade_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password=~/\d/
  end
end

phone = Gadget.new("user001", "cumputer001")
puts phone.password
phone.password = 321
puts phone.password
phone.password = "oliveira"
puts phone.password
phone.password = "oliveira321"
puts phone.password
