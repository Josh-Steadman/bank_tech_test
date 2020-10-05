require_relative 'account_log'

class Account

    attr_reader :balance

    def initialize( account_history = AccountLog.new) 
        @balance = 0
        @account_history = account_history
    end

    def deposit(sum)
        @balance += sum
       
    end

    def withdraw(sum)
        @balance -= sum
    end

end