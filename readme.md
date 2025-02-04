# **Study Group MP - Week 7**

**Athila Ramdani Saputra**  
**NIM: 103012300132**

## [![Typing SVG](https://readme-typing-svg.demolab.com/?lines=Hello+temen+temen+!;Ini+Rangkuman+W7+Athdanz😎)](https://git.io/typing-svg)

## Rangkuman Week 7: Working with Local Storage in Flutter

Di **Week 7** ini, kita mempelajari cara menyimpan data secara lokal di perangkat pengguna bersama kak darrel dan kak raihan, menggunakan berbagai metode penyimpanan lokal seperti **Local Storage**, **Session Storage**, dan **Cookies**. Selain itu, kita juga membahas beberapa teknologi penyimpanan lokal yang populer di Flutter, seperti **Hive**, **SQLite**, dan **SharedPreferences**.

---

### **1. Perbedaan Cookies, Session Storage, dan Local Storage**

#### **Cookies**
- **Akses**: Bisa diakses oleh server dan client.
- **Penggunaan**: Sering digunakan untuk menyimpan informasi kecil seperti session ID atau preferensi pengguna.
- **Masa Hidup**: Dapat diatur untuk bertahan dalam waktu tertentu atau hingga pengguna menghapusnya.

#### **Session Storage**
- **Akses**: Hanya bisa diakses oleh client.
- **Penggunaan**: Data disimpan sementara selama sesi browser (tab) terbuka.
- **Masa Hidup**: Data terhapus saat tab atau browser ditutup.

#### **Local Storage**
- **Akses**: Hanya bisa diakses oleh client.
- **Penggunaan**: Data disimpan secara permanen di perangkat pengguna.
- **Masa Hidup**: Data tetap ada meskipun aplikasi atau browser ditutup, kecuali dihapus secara manual oleh pengguna.

---

### **2. Local Storage dalam Flutter**

Local Storage adalah cara untuk menyimpan data secara permanen di perangkat pengguna. Ini berguna untuk aplikasi yang tidak memerlukan koneksi internet permanen atau yang melakukan semua operasi pada perangkat itu sendiri.

#### **Kegunaan Local Storage**
- Menyimpan pengaturan aplikasi.
- Menyimpan data pengguna.
- Menyimpan data yang perlu dipertahankan meskipun aplikasi ditutup.

---

### **3. Teknologi Penyimpanan Lokal di Flutter**

#### **Hive**
- **Deskripsi**: Hive adalah database yang cepat dan ringan untuk Flutter yang tidak memerlukan server atau koneksi internet.
- **Kelebihan**:
  - Cepat dan ringan.
  - Mendukung penyimpanan data dalam bentuk objek Dart secara langsung.
  - Tidak memerlukan setup database yang rumit.
- **Konsep Box**:
  - Box adalah tempat untuk menyimpan data dalam bentuk key-value.
  - Setiap Box memiliki nama unik dan data di dalamnya disimpan secara asinkron.

#### **SQLite**
- **Deskripsi**: SQLite adalah relational database yang digunakan untuk menyimpan data dalam bentuk tabel.
- **Kelebihan**:
  - Cocok untuk aplikasi dengan struktur data yang kompleks.
  - Mendukung operasi SQL untuk query yang lebih fleksibel.
  - Ideal untuk data yang terstruktur seperti data produk atau transaksi.
- **Penggunaan**: Memerlukan lebih banyak pengaturan dibandingkan Hive, tetapi memberikan fleksibilitas yang lebih besar.

#### **SharedPreferences**
- **Deskripsi**: SharedPreferences adalah cara sederhana untuk menyimpan data kecil dalam bentuk key-value.
- **Kelebihan**:
  - Mudah digunakan.
  - Ideal untuk menyimpan data kecil seperti pengaturan aplikasi atau status login pengguna.
- **Keterbatasan**: Tidak cocok untuk menyimpan data besar atau kompleks.

---

### **4. Perbandingan Hive, SQLite, dan SharedPreferences**

| Fitur               | Hive                          | SQLite                       | SharedPreferences          |
|---------------------|-------------------------------|------------------------------|----------------------------|
| **Tipe Data**       | Key-Value, Objek Dart         | Tabel (Relational)           | Key-Value                  |
| **Kompleksitas**    | Sederhana                     | Sedang                       | Sangat Sederhana           |
| **Penggunaan**      | Data kecil hingga sedang      | Data terstruktur & kompleks  | Data kecil (pengaturan)    |
| **Kecepatan**       | Cepat                         | Sedang                       | Cepat                      |
| **Setup**           | Mudah                         | Lebih rumit                  | Sangat Mudah               |

---

### **5. Best Practices dalam Penggunaan Local Storage**

1. **Pilih Teknologi yang Tepat**:
   - Gunakan **SharedPreferences** untuk data kecil seperti pengaturan.
   - Gunakan **Hive** untuk data yang lebih kompleks tetapi tidak memerlukan struktur tabel.
   - Gunakan **SQLite** untuk data terstruktur dan relasional.

2. **Enkripsi Data Sensitif**:
   - Selalu enkripsi data sensitif seperti informasi login atau data pribadi pengguna.

3. **Manajemen Storage**:
   - Bersihkan data yang tidak diperlukan secara berkala untuk menghemat ruang penyimpanan.

4. **Error Handling**:
   - Selalu tangani error yang mungkin terjadi saat membaca atau menulis data lokal.

---

### **Penutup**
Dengan memahami berbagai metode penyimpanan lokal seperti Hive, SQLite, dan SharedPreferences, kita dapat memilih solusi terbaik sesuai kebutuhan aplikasi. Local Storage memungkinkan aplikasi kita berfungsi dengan baik bahkan dalam mode offline, meningkatkan pengalaman pengguna secara signifikan. 🚀

### **Resources Tambahan**
- [Dokumentasi Hive](https://docs.hivedb.dev/)
- [Dokumentasi SQLite](https://pub.dev/packages/sqflite)
- [Dokumentasi SharedPreferences](https://pub.dev/packages/shared_preferences)