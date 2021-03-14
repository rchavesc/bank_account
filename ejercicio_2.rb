class BankAccount
  attr_accessor :username, :account, :vip

  def initialize(username, account, vip = 0)
    @username = username
    @account = account
    @vip = vip
    raise RangeError, "Invalid Account." unless account.digits.count == 8
  end

  def show
    puts "usuario: #{@username}, account number #{@vip}-#{@account}, status: #{@vip}"
  end
end

user = BankAccount.new('rodigo', 12341234)
user.show