# **Study Group MP - Week 6**

**Athila Ramdani Saputra**  
**NIM: 103012300132**

## [![Typing SVG](https://readme-typing-svg.demolab.com/?lines=Hello+temen+temen+!;Ini+Rangkuman+W6+Athdanz😎)](https://git.io/typing-svg)

## Rangkuman Week 6: Working with API dan Future dalam Flutter

Di **Week 6** ini, kita mempelajari konsep penting dalam pengembangan aplikasi Flutter yaitu penggunaan API dan Future untuk menangani operasi asinkron.

### **1. Future dalam Dart**

Future adalah konsep fundamental dalam Dart untuk menangani operasi asinkron. Ini merepresentasikan nilai atau error yang akan tersedia di masa depan.

#### Karakteristik Future:
- Menangani operasi yang membutuhkan waktu
- Berjalan secara asinkron (tidak blocking)
- Ideal untuk operasi I/O seperti:
  - Mengambil data dari internet
  - Mengakses storage device
  - Membaca file dari galeri

### **2. Bekerja dengan API**

API (Application Programming Interface) memungkinkan komunikasi antara client (aplikasi Flutter) dan server.

#### Komponen Penting:
- **Client**: Aplikasi Flutter yang kita buat
- **Server**: Endpoint API (contoh: https://dummyjson.com)
- **Format Data**: Umumnya menggunakan JSON

#### Tools yang Digunakan:
1. **Dio Package**
   - Lebih direkomendasikan dibanding http package
   - Memiliki fitur interceptor
   - Sintaks yang lebih sederhana

2. **Alat Bantu Development**
   - Postman: Testing API endpoint
   - JSONCrack: Visualisasi struktur JSON
   - QuickType: Konversi JSON ke model Dart

### **3. Model dan JSON Parsing**

Untuk menggunakan data JSON dalam aplikasi Flutter, kita perlu mengkonversinya ke bentuk model Dart.

#### Langkah-langkah:
1. Mendapatkan response JSON dari API
2. Menggunakan QuickType untuk generate model Dart
3. Implementasi model dalam aplikasi

```dart
// Contoh model sederhana
class Product {
  final int id;
  final String title;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
    );
  }
}
```

### **4. Arsitektur API dalam Flutter**

Implementasi API mengikuti alur yang terstruktur:

```
REMOTE → SERVICE → CONTROLLER → UI
```

#### Penjelasan Alur:
- **REMOTE**: Layer untuk komunikasi langsung dengan API
- **SERVICE**: Layer untuk mengolah data dari remote
- **CONTROLLER**: Layer untuk logika bisnis
- **UI**: Layer untuk menampilkan data ke user

### **5. Best Practices**

1. **Error Handling**
   - Selalu implementasi try-catch
   - Berikan feedback yang jelas ke user

2. **Loading State**
   - Tampilkan indikator loading saat fetch data
   - Gunakan FutureBuilder atau GetX untuk state management

3. **Data Caching**
   - Pertimbangkan untuk menyimpan data sementara
   - Kurangi beban server dan improve UX

### **Penutup**
Dengan pemahaman tentang Future dan API, kita dapat membuat aplikasi Flutter yang dapat berkomunikasi dengan server dan menangani operasi asinkron dengan baik! 🚀

### **Resources Tambahan**
- [Dokumentasi Dio](https://pub.dev/packages/dio)
- [DummyJSON API](https://dummyjson.com/docs)
- [QuickType](https://quicktype.io/)