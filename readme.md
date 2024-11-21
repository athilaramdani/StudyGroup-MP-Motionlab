# **Study Group MP - Week 1**  
**Athila Ramdani Saputra**  
**NIM: 103012300132**  

# Flutter Week 1 with Kak Indra Mahesa

## Pembukaan
rangkuman **Week 1 Flutter** bersama Kak Indra Mahesa! Dalam sesi ini, kami mempelajari dasar-dasar **Flutter** sebagai alat untuk pengembangan aplikasi mobile. Sebelum mulai belajar Flutter, ada beberapa prasyarat yang perlu dipahami, termasuk pemrograman dengan bahasa Dart. Rangkuman ini mencakup teori, implementasi, dan contoh kode yang telah kami praktikkan.

---

## Penjelasan

### **Apa itu Flutter?**
Flutter adalah sebuah toolkit yang dikembangkan oleh Google untuk membuat aplikasi mobile yang indah dan berkinerja tinggi. Flutter memanfaatkan bahasa pemrograman Dart sebagai dasarnya.

#### **Prasyarat Belajar Flutter:**
1. Familiar dengan aplikasi Android/iOS.
2. Memahami algoritma pemrograman.
3. Menguasai bahasa pemrograman Dart.

---

### **Bahasa Pemrograman Dart**
Dart adalah bahasa yang:
- **Dikembangkan oleh Google** dengan fokus pada pengembangan frontend.
- **Mendukung paradigma Object-Oriented** Programming (OOP).
- **Menganut strongly-typed system**, yang berarti setiap variabel memiliki tipe data yang jelas.

---

### **Dasar-Dasar Dart yang Dipelajari**
1. **Print Hello World**
```dart
void main() {
  print("Hello, World!");
}
```
2. **Pengenalan Variabel**
   - Variabel menggunakan `var`, `String`, `int`, `double`, dll.
```dart
void main() {
  String nama = "Athila";
  int umur = 20;
  double tinggi = 175.5;

  print("Nama: $nama");
  print("Umur: $umur");
  print("Tinggi: $tinggi cm");
}

```
3. **Final dan Const**
   - Nilai yang tidak dapat diubah setelah deklarasi dengan perbedaan :
   - `final` : Nilai ditentukan saat runtime.
   - `const` : Nilai harus diketahui saat compile time.
```dart
void main() {
  final waktuSekarang = DateTime.now();
  const pi = 3.14;

  print("Waktu sekarang: $waktuSekarang");
  print("Nilai pi: $pi");
}
```
4. **Dynamic dan Null Type**
   - Dynamic: Variabel tanpa tipe data tetap, tipe akan ditentukan saat runtime.
- Null : Dart memastikan variabel tidak boleh bernilai null kecuali dideklarasikan eksplisit.
```dart
void main() {
  dynamic variabelBebas = "Hello";
  print(variabelBebas);

  variabelBebas = 123; // Tipe data berubah
  print(variabelBebas);

  String? bolehNull = null; // Variabel null-safe
  print(bolehNull);
}

```
5. **Operasi Aritmatika dan Perbandingan**
    - art mendukung operasi aritmatika seperti penjumlahan, pengurangan, dan sebagainya, serta operator perbandingan.
```dart
void main() {
  int a = 10, b = 5;

  print("Penjumlahan: ${a + b}");
  print("Pengurangan: ${a - b}");
  print("Perbandingan: ${a > b}");
}

```
6. **Percabangan**
   - Contoh: `if`, `else if`,`else`
```dart
void main() {
  int nilai = 75;

  if (nilai >= 80) {
    print("Nilai: A");
  } else if (nilai >= 60) {
    print("Nilai: B");
  } else {
    print("Nilai: C");
  }
}

```
7. **Perulangan**
    - Dart mendukung perulangan seperti `for`, `while`, dan `do-while`.
```dart
void main() {
  List<String> mahasiswa = ["Athila", "Pei", "Tomang"];

  for (int i = 0; i < mahasiswa.length; i++) {
    print("Mahasiswa: ${mahasiswa[i]}");
  }

  for (var mhs in mahasiswa) {
    print("Mahasiswa (for in): $mhs");
  }
}

```


8. **Function**
   - Fungsi adalah blok kode yang dapat digunakan ulang. Dart juga mendukung **Arrow Function** dan **Anonymous Function**. 
```dart
void fungsiBiasa() {
  print("Ini fungsi biasa.");
}

void main() {
  // Arrow Function
  int penjumlahan(int a, int b) => a + b;

  // Anonymous Function
  var fungsiTanpaNama = () {
    print("Fungsi tanpa nama.");
  };

  fungsiBiasa();
  print("Hasil Penjumlahan: ${penjumlahan(5, 3)}");
  fungsiTanpaNama();
}

```


9. **Struktur Data**
   - **List:** Menyimpan banyak nilai dalam satu variabel.
   - **Map:** Menyimpan data dalam pasangan kunci dan nilai, mirip seperti `struct`.
```dart
void main() {
  // List
  List<String> mahasiswa = ["Athila", "Pei", "Tomang"];
  print("Mahasiswa: $mahasiswa");

  // Map
  Map<String, int> nilaiMahasiswa = {
    "Athila": 90,
    "Pei": 85,
    "Tomang": 78,
  };
  print("Nilai Mahasiswa: $nilaiMahasiswa");
}

```
10. **Class**
   - Blueprint untuk membuat objek. Variabel privat hanya dapat diakses dalam file yang sama.
```dart
class Mahasiswa {
  String nama;
  int umur;

  Mahasiswa(this.nama, this.umur);

  void perkenalan() {
    print("Halo, nama saya $nama, umur saya $umur tahun.");
  }
}

void main() {
  Mahasiswa mhs = Mahasiswa("Athila", 20);
  mhs.perkenalan();
}

```
### **Object-Oriented Programming (OOP) dalam Dart**

Dart mendukung paradigma **Object-Oriented Programming (OOP)** yang memungkinkan pengembang untuk membuat program yang lebih modular dan terorganisasi. OOP terdiri dari empat prinsip utama: **Encapsulation, Inheritance, Polymorphism,** dan **Abstraction**.

#### **Encapsulation**
Encapsulation adalah konsep membungkus data (variabel) dan metode dalam sebuah class, serta membatasi akses ke data dengan menggunakan modifier seperti `private`.

```dart
class Mahasiswa {
  String _nama; // Variabel private
  int _umur;

  Mahasiswa(this._nama, this._umur);

  // Getter untuk mengakses variabel private
  String get nama => _nama;

  // Setter untuk mengubah variabel private
  set nama(String namaBaru) {
    _nama = namaBaru;
  }

  void perkenalan() {
    print("Halo, nama saya $_nama, umur saya $_umur tahun.");
  }
}

void main() {
  Mahasiswa mhs = Mahasiswa("Athila", 20);
  mhs.perkenalan();

  // Mengakses data private menggunakan setter dan getter
  mhs.nama = "Ramdani";
  print("Nama baru: ${mhs.nama}");
}
```

#### **Inheritance**
Inheritance adalah kemampuan sebuah class untuk mewarisi properti dan metode dari class lain (parent class).

```dart
// Parent class
class Kendaraan {
  void bergerak() {
    print("Kendaraan bergerak.");
  }
}

// Child class
class Mobil extends Kendaraan {
  void klakson() {
    print("Mobil membunyikan klakson!");
  }
}

void main() {
  Mobil avanza = Mobil();
  avanza.bergerak(); // Dari parent class
  avanza.klakson();  // Dari child class
}

```
#### **Polymorphism**
Polymorphism memungkinkan suatu metode atau fungsi memiliki implementasi yang berbeda berdasarkan class yang menggunakannya.

```dart
class Hewan {
  void suara() {
    print("Hewan bersuara.");
  }
}

class Kucing extends Hewan {
  @override
  void suara() {
    print("Kucing mengeong.");
  }
}

class Anjing extends Hewan {
  @override
  void suara() {
    print("Anjing menggonggong.");
  }
}

void main() {
  Hewan hewan1 = Kucing();
  Hewan hewan2 = Anjing();

  hewan1.suara();
  hewan2.suara();
}

```
#### **Abstraction**
Abstraction adalah kemampuan untuk mendefinisikan kerangka dasar tanpa memberikan implementasi secara langsung. Hal ini dilakukan menggunakan abstract class.
```dart
class Hewan {
  void suara() {
    print("Hewan bersuara.");
  }
}

class Kucing extends Hewan {
  @override
  void suara() {
    print("Kucing mengeong.");
  }
}

class Anjing extends Hewan {
  @override
  void suara() {
    print("Anjing menggonggong.");
  }
}

void main() {
  Hewan hewan1 = Kucing();
  Hewan hewan2 = Anjing();

  hewan1.suara();
  hewan2.suara();
}

```


---