require_relative 'App_store.rb'

class Gadget

  attr_accessor :username, :password
  attr_reader :production_number
  attr_reader :apps

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_prodnumber
    @apps = []
  end

  #Generating production number
  def generate_prodnumber
    digits = rand(100..999)
    lethers = ("A".."Z").to_a.sample(2).join
    year = 2023
    "#{digits}#{lethers}#{year}"
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  #Reseting password
  def reset_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~/\d/
  end
  def password=(new_password)
    @password = new_password if reset_password(new_password)
  end

  #General gadget informations
  def info
    "User name: #{self.username} - Password: #{self.password} - Production number: #{self.production_number}"
  end

  #Install APP
  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  #Unistall APP
  def delete_app(name)
    app = apps.find {|istalled_app| istalled_app.name == name}
    apps.delete(app) unless app.nil?
  end

end


laptop = Gadget.new("Daniel", "oliveria564")
puts laptop.info

laptop.install_app(:Chat)
laptop.install_app(:Weather)
laptop.install_app(:Twitter)
puts laptop.apps

puts 

laptop.delete_app(:Chat)
puts laptop.apps
