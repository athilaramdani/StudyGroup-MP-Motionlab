void printHeader() {
  print('\x1B[34m=========================================\x1B[0m');
  print('\x1B[34m   Selamat Datang di Aplikasi Athdanz Bank   \x1B[0m');
  print('\x1B[34m=========================================\x1B[0m');
}

void printMenu(String? namaakun) {
  print('\n--- Menu Utama ---');
  if (namaakun != Null) {
    print('Selamat Datang, \x1B[94m$namaakun\x1B[0m');
  }
  print('1. Cek Saldo');
  print('2. Deposit Saldo');
  print('3. Tarik Saldo');
  print('4. Keluar');
}
