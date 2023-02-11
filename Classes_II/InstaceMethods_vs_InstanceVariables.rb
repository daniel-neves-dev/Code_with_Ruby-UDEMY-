class BankAccount
  attr_reader :amount

  def initialize
    @amount = 5000
  end

  def info
    "Your Banck Account has a total of #{@amount} dollars." #Instance variables
  end

  def to_s
    "Your Banck Account has a total of #{self.amount} dollars." #Instance methods
  end

  
  def amount
    @amount/100
  end

  

end

santander = BankAccount.new
puts santander.info
puts santander.to_s