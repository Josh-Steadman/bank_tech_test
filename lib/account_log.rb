
class AccountLog 

    def initialize
        @account_log = []
    end

    def view
        puts @account_log
        return @account_log
    end

    def log_deposit(sum)
        @account_log.push({:deposit => sum})
    end

end