import 'dart:io';

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


void main() {
  printHeader();

  stdout.write('Masukkan nama akun Anda: ');
  String? name = stdin.readLineSync();

  // Validasi nama akun
  while (name == null || name.trim().isEmpty) {
    stdout.write('Nama akun tidak boleh kosong. Masukkan nama akun Anda: ');
    name = stdin.readLineSync();
  }

  var account = BankAccount(name);

  while (true) {
    printMenu(account.accountName);
    stdout.write('Pilih menu (1-4): ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        account.checkBalance();
        break;
      case '2':
        stdout.write('Masukkan jumlah deposit: ');
        int? depositAmount = int.tryParse(stdin.readLineSync() ?? '');
        if (depositAmount != null) {
          account.deposit(depositAmount);
        } else {
          print('Input tidak valid, mohon masukkan angka.');
        }
        break;
      case '3':
        stdout.write('Masukkan jumlah penarikan: ');
        int? withdrawAmount = int.tryParse(stdin.readLineSync() ?? '');
        if (withdrawAmount != null) {
          account.withdraw(withdrawAmount);
        } else {
          print('Input tidak valid, mohon masukkan angka.');
        }
        break;
      case '4':
        print('Terima kasih telah menggunakan layanan kami!');
        exit(0);
      default:
        print('Pilihan tidak valid, silakan coba lagi.');
    }
  }
}

void printHeader() {
  print('\x1B[34m=========================================\x1B[0m');
  print('\x1B[34m   Selamat Datang di Aplikasi Athdanz Bank   \x1B[0m');
  print('\x1B[34m=========================================\x1B[0m');
}

void printMenu(String namaakun) {
  print('\n--- Menu Utama ---');
  print('Selamat Datang, \x1B[94m$namaakun\x1B[0m');
  print('1. Cek Saldo');
  print('2. Deposit Saldo');
  print('3. Tarik Saldo');
  print('4. Keluar');
}