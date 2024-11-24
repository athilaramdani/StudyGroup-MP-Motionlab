import 'dart:io';
import 'account.dart';
import 'ui.dart';

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

