module AppStore

  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new(:Chat, :Facebook, 2.3),
    App.new(:Twitter,:Twitter, 5.8),
    App.new(:Weather, :Yahoo, 12.5)
  ]

  def self.find_app(name)
    APPS.find{|app| app.name == name}
  end
end