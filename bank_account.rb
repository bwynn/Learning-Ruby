class BankAccount
  class << self

  def create_for(first_name, last_name)
    @accounts ||= []
    @accounts << BankAccount.new(first_name, last_name)
  end

  def find_for(first_name, last_name)
    @accounts.find{|account| account.full_name == "#{first_name} #{last_name}"}
  end

  def initialize(first_name, last_name)
    @balance = 0
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
