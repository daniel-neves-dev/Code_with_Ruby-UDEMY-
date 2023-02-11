class Gadget

  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
  end

  def validade_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password=~/\d/
  end
end

phone = Gadget.new("user001", "cumputer001")
puts phone.password
