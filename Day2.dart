class BankAccount {
  String owner;
  double _balance = 0;

  BankAccount(this.owner, this._balance);

  double get balance => _balance;

  set balance(double newBalance) {
    if (newBalance < 0) {
      print('Error: Balance cannot be negative.');
    } else {
      _balance = newBalance;
    }
  }

  void displayBalance() {
    print('$owner\'s balance: $_balance');
  }
}

void main() {
  BankAccount account = BankAccount('Abdul-Azeez', 1000);
  account.balance = -100;
  account.displayBalance();
}
