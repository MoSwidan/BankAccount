class BankAccount {
  String accountID; 
  double balance;  

  BankAccount(this.accountID, this.balance);

  BankAccount.withZeroBalance(this.accountID) : balance = 0;
  
  void withdraw(double amount) {
    if (!amount.isNegative) {
      if (amount <= balance) {
        balance = balance - amount;
        print("Withdrawn: \$${amount}");
      } else {
        print("Insufficient balance!");
      }
    } else {
      print("Withdrawal amount must be positive.");
    }
  }
  
  void deposit(double amount) {
    if (!amount.isNegative) {
      balance += amount; 
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  

  void displayAccountInfo() {
    print("Account ID: $accountID");
    print("Current Balance: L.E ${balance}");
  }
}

void main() {
  // Step 1: Create a new bank account with zero balance
  var myAccount = BankAccount.withZeroBalance("A12345");
  myAccount.displayAccountInfo();

  // Step 2: Deposit some money
  myAccount.deposit(200);
  myAccount.displayAccountInfo();

  // Step 3: Try to withdraw some money
  myAccount.withdraw(50);
  myAccount.displayAccountInfo();

  // Step 4: Try to withdraw more money than you have
  myAccount.withdraw(300);

  // Step 5: Display final account info
  myAccount.displayAccountInfo();
}
