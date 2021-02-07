class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    public
      def display_balance(pin_number)
        if pin_number == pin
          puts "Balance: $#{@balance}."
        else
          puts pin_error
        end
      end
  
      def withdraw(pin_number, amount)
        if pin_number == pin
          puts puts "Withdrew #{amount}. New balance: $#{@balance}."
          else
          puts pin_error
        end
      end
    private
      def pin
        @pin = 1234
      end
      def pin_error
        return "Access denied: incorrect PIN."
      end
  end
  
  checking_account = Account.new("Irene")
  checking_account.withdraw(1234, 1000)
  checking_account.display_balance(1234)