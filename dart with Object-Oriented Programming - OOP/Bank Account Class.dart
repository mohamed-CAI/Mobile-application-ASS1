// Define the BankAccount class
class BankAccount {
  double _balance = 0.0; // Private property for balance, initialized to 0

  // Method to deposit money into the account
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited $amount, new balance: $_balance');
    } else {
      print('Amount must be greater than zero');
    }
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew $amount, new balance: $_balance');
    } else {
      print('Insufficient balance or invalid amount');
    }
  }

  // Method to get the current balance
  double getBalance() {
    return _balance;
  }
}

void main() {
  // Create an instance of the BankAccount class
  BankAccount account = BankAccount();
  // Perform some operations
  account.deposit(100.0);         // Deposit 100
  account.withdraw(50.0);         // Withdraw 50
  print('Current balance: ${account.getBalance()}'); // Display current balance
}
