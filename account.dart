class BankAccount {
  String accountName;
  int balance;

  // Default saldo: Rp50.000
  BankAccount(this.accountName, [this.balance = 50000]);

  void checkBalance() {
    print('Saldo Anda saat ini adalah: Rp$balance');
  }

  void deposit(int amount) {
    if (amount <= 0) {
      print('Jumlah deposit harus lebih dari 0.');
    } else {
      balance += amount;
      print('Berhasil menambahkan saldo sebesar Rp$amount.');
    }
  }

  void withdraw(int amount) {
    if (amount <= 0) {
      print('Jumlah penarikan harus lebih dari 0.');
    } else if (amount > balance) {
      print('Saldo Anda tidak mencukupi untuk penarikan ini.');
    } else {
      balance -= amount;
      print('Berhasil menarik saldo sebesar Rp$amount.');
    }
  }
}
