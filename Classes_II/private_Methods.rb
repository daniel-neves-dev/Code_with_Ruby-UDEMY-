class Gadget
  attr_accessor :username
  attr_reader :production_number

  def initialize(username)
    @username = username
    @production_number = generate_production_number
  end

  def info
    "User name: #{@username} - Production number: #{@production_number}"
  end

  private #can only be called within the object
  def generate_production_number
    digits = rand(100..999)
    alphabet = ("A".."Z").to_a.sample(2).join
    year = 2023
    "#{digits}#{alphabet}#{year}"
  end
end

laptop = Gadget.new("newuser001")
puts laptop.info
puts laptop.production_number
#puts laptop.generate_production_number #Error private method