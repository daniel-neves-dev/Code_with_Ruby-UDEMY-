require_relative 'App_store.rb'

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
    puts "\nUser name: #{self.username} - Password: #{self.password} - Serial number: #{self.serial_number} - Made by: #{self.class}" 
  end

  #Installed apps
  def to_s
    puts "\nInstalled apps:#{@apps}\n"
  end

  #Installing apps
  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  #Removing apps
  def delete_app(name)
    app = apps.find {|installed_app| installed_app.name == name}
    apps.delete(app) unless app.nil?
  end

end
  
laptop = Gadget.new("Daniel963","oliveira123")
laptop.info

laptop.install_app(:Chat)
laptop.install_app(:Twitter)
laptop.install_app(:Weather)
laptop.to_s

laptop.delete_app(:Chat)
laptop.to_s