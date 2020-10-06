require_relative 'account_log'

class Account

    attr_reader :balance

    def initialize( account_history = AccountLog.new) 
        @balance = 0
        @account_history = account_history
    end

    def deposit(sum, date = Time.new)
        @balance += sum
        @account_history.log_deposit(sum, date.strftime("%Y-%m-%d"), @balance)
    end

    def withdraw(sum, date = Time.new)
        fail "balance can't go below £0" if balance - sum < 0
        @balance -= sum
        @account_history.log_withdraw(sum, date.strftime("%Y-%m-%d"), @balance)
    end

    def view_statement
        @account_history.view
    end

end