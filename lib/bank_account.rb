require_relative 'account_log'

class Account

    attr_reader :balance

    def initialize( account_history = AccountLog.new) 
        @balance = 0
        @account_history = account_history
    end

    def deposit(sum, date)
        @balance += sum
        @account_history.log_deposit(sum, date, @balance)
    end

    def withdraw(sum, date)
        @balance -= sum
        @account_history.log_withdraw(sum, date, @balance)
    end

    def view_statement
        @account_history.view
    end

end