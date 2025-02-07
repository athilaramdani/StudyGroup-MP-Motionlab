# **Study Group MP - Week 8**

**Athila Ramdani Saputra**  
**NIM: 103012300132**

## [![Typing SVG](https://readme-typing-svg.demolab.com/?lines=Hello+temen+temen+!;Ini+Rangkuman+W8+Athdanz😎)](https://git.io/typing-svg)

## Rangkuman Week 8: Introduction to Firebase in Flutter

Di **Week 8** ini, kita mempelajari pengenalan Firebase dalam pengembangan aplikasi Flutter bersama kak Indra Mahesa dan kak Raihan. Firebase adalah platform pengembangan aplikasi dari Google yang menyediakan berbagai layanan seperti penyimpanan data, autentikasi, analisis, dan lainnya. Kita juga membahas Firestore, salah satu layanan database dari Firebase, serta konsep Stream dan StreamBuilder dalam Flutter.

---

### **1. Pengenalan Firebase**

#### **Firebase**
- **Deskripsi**: Firebase adalah platform pengembangan aplikasi dari Google.
- **Fitur**: Menyediakan berbagai layanan seperti penyimpanan data, autentikasi, analisis, dan lainnya.
- **Kegunaan**: Cocok digunakan dalam pengembangan aplikasi Flutter untuk mengintegrasikan fitur-fitur backend dengan cepat dan efisien.

#### **Firestore**
- **Deskripsi**: Firestore adalah salah satu layanan cloud database dari Firebase.
- **Fitur**:
  - Menyimpan dan mengelola data aplikasi secara mudah.
  - Perubahan data dilakukan secara realtime yang disinkronkan secara otomatis di semua perangkat yang terhubung.
  - Mendukung pengembangan aplikasi berbagai platform.

---

### **2. Firestore Fundamentals**

#### **Collection**
- **Deskripsi**: Collection adalah sekumpulan document dalam Firestore.
- **Kegunaan**: Mirip dengan tabel dalam database relasional, Collection memungkinkan Anda untuk menyimpan dan mengelola sekelompok data terkait dalam aplikasi Anda.

#### **Document**
- **Deskripsi**: Document adalah tempat di mana Anda menyimpan data di dalam Firestore.
- **Fitur**:
  - Setiap document memiliki kumpulan data yang berisi informasi.
  - Setiap document memiliki ID yang unik untuk membedakan satu dengan yang lainnya.

#### **Tipe Data yang Didukung Firestore**
- String, Boolean, Timestamp, Number, Map, Array, Null, Geopoint, Reference.

---

### **3. Perbedaan Stream dan API**

#### **API**
- **Deskripsi**: API (Application Programming Interface) adalah sekumpulan protokol dan alat untuk membangun aplikasi perangkat lunak.
- **Kegunaan**: Digunakan untuk berkomunikasi antara aplikasi dan server.

#### **Stream**
- **Deskripsi**: Stream adalah asynchronous function yang dikirimkan secara berurutan berdasarkan event yang diberikan.
- **Kegunaan**: Berbeda dengan Future yang hanya mengembalikan satu data saja, Stream akan selalu mengembalikan data sampai tidak ada lagi data yang melewati aliran tersebut.

#### **Snapshot**
- **Deskripsi**: Data yang dialirkan dari pengguna A ke pengguna B disebut snapshot.
- **Fitur**:
  - **ConnectionState**: Status snapshot (waiting, active, none).
  - **Data**: Data yang diterima dari stream.

---

### **4. Mengenal Stream dan StreamBuilder**

#### **Stream**
- **Deskripsi**: Asynchronous function yang dikirimkan secara berurutan berdasarkan event yang diberikan.
- **Kegunaan**: Seperti aliran air, Stream akan selalu mengembalikan data sampai tidak ada lagi data yang melewati aliran tersebut.

#### **StreamBuilder (Widget)**
- **Deskripsi**: Widget yang digunakan untuk membangun UI berdasarkan data dari Stream.
- **Contoh Kode**:
    ```dart
  StreamBuilder(
    stream: getDataStream(),
    builder: (context, snapshot) {
      return Container();
    },
  ),
    ```
### **5. Hands-On: Integrating Firebase Firestore to Your Flutter**

#### **Langkah-langkah Integrasi Firebase Firestore ke Flutter**

1. **Create Firebase Project**:
   - Buat proyek Firebase baru di Firebase Console.

2. **Create Firestore Database Service**:
   - Buat database Firestore di Firebase Console.

3. **Integrate Firebase to Your Flutter**:
   - **Install Firebase CLI**: Instal Firebase CLI di mesin.
   - **Install FlutterFire CLI**: Instal FlutterFire CLI untuk mengintegrasikan Firebase dengan Flutter.
   - **Add Firebase Core to Your Flutter Application**: Tambahkan package `firebase_core` ke proyek Flutter.

4. **Add Firestore Service to Your Flutter Application**:
   - Tambahkan package `cloud_firestore` ke proyek Flutter.
   - Konfigurasikan Firestore di aplikasi Flutter.

---

### **Penutup**
Dengan memahami Firebase dan Firestore, kita dapat mengintegrasikan fitur-fitur backend dengan cepat dan efisien dalam aplikasi Flutter. Firebase menyediakan berbagai layanan yang memudahkan pengembangan aplikasi, terutama dalam hal penyimpanan data dan sinkronisasi realtime. 🚀

### **Resources Tambahan**
- [Dokumentasi Firebase](https://firebase.google.com/docs)
- [Dokumentasi Firestore](https://firebase.google.com/docs/firestore)
- [Dokumentasi StreamBuilder](https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html)