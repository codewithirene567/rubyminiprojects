class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    # In the very beginning we are initializing our account to have a name for the account
    #and a balance. By default we are setting the balance to be $100 if no balance is given.
    #This is called an optional argument
    public
      def display_balance(pin_number)
        if pin_number == pin
          puts "Balance: $#{@balance}."
        else
          puts pin_error
        end
      end
      #this is an method that if called on an account instance, will display the balance as long as the pin number
      #matches the pin defined in our private method below
  
      def withdraw(pin_number, amount)
        if pin_number == pin
          puts puts "Withdrew #{amount}. New balance: $#{@balance}."
          else
          puts pin_error
        end
      end
      #this is a method that represents the action of taking out money. If the user pin matches then
      #the console will output the sentence with the appropriate arguments shown
    private
      def pin
        @pin = 1234
      end
      #default pin is defined here
      def pin_error
        return "Access denied: incorrect PIN."
      end
      #this shows the error if they get the pin incorrectly put in
  end
  
  checking_account = Account.new("Irene") #an example of an instance of a bank account being created,
  #no argument given so it will have $100 in it
  checking_account.withdraw(1234, 1000)
  #someone is trying to call the withdraw method on to this account, the pin given was correct
  # and $1000 is trying to be taken out of the account
  checking_account.display_balance(1234)
  #the balance is being displayed here after the correct pin is given through the argument