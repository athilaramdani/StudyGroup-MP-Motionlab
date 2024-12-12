# **Study Group MP - Week 4**

**Athila Ramdani Saputra**
**NIM: 103012300132**

## [![Typing SVG](https://readme-typing-svg.demolab.com/?lines=Hello+temen+temen+!;Ini+Rangkuman+W3+Athdanz😎)](https://git.io/typing-svg)

## Rangkuman Week 4: State Management di Flutter dengan GetX

Di **Week 4** ini yang dimentoring oleh bang **Aziz**, kita mempelajari konsep State Management di Flutter, dengan fokus pada penggunaan GetX sebagai solusi manajemen state yang efisien.

### **Pengertian State Management**

State Management adalah cara mengelola data atau informasi dalam suatu aplikasi. State sendiri merepresentasikan kondisi aplikasi pada suatu waktu tertentu.

#### Diagram Perputaran State

```
Data → Who Needs It
Model (Data) ↔ Controller (Logic) ↔ View (UI)
```

### **MVC (Model View Controller)**

MVC adalah pola desain yang memisahkan aplikasi menjadi 3 komponen utama:
- **Model**: Representasi data
- **View**: Tampilan antarmuka pengguna
- **Controller**: Penghubung antara Model dan View

### **State Management dengan GetX**

GetX menyediakan dua pendekatan utama untuk manajemen state:

#### 1. Reactive State Management

Digunakan untuk observasi langsung perubahan variabel menggunakan `.obs`

Tipe data Reactive:
- `RxList<T>`: Untuk list dengan tipe generik
- `RxInt`
- `RxString`
- Dan lain-lain

**Contoh Implementasi Reactive:**

```dart
import 'package:get/get.dart';

class CounterController extends GetxController {
  // Reactive variable
  var counter = 0.obs;

  // Method untuk increment
  void increment() {
    counter++;
  }
}

class CounterView extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(
          'Counter: ${controller.counter}',
          style: TextStyle(fontSize: 24),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

#### 2. Simple State Management

Digunakan tanpa RxType, menggunakan method `update()`

**Contoh Implementasi Simple:**

```dart
import 'package:get/get.dart';

class SimpleCounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update(); // Memicu rebuild widget
  }
}

class SimpleCounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<SimpleCounterController>(
          init: SimpleCounterController(),
          builder: (controller) => Text(
            'Counter: ${controller.counter}',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Get.find<SimpleCounterController>().increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

### **Konfigurasi GetX**

1. Tambahkan dependency di `pubspec.yaml`:
```yaml
dependencies:
  get: ^4.6.5
```

2. Jalankan `flutter pub get`

3. Import di file Dart:
```dart
import 'package:get/get.dart';
```

### **Perbedaan Utama**

- **Reactive**: Gunakan `.obs` dan `Obx()` untuk observasi otomatis
- **Simple**: Gunakan `update()` dan `GetBuilder()` untuk kontrol manual

### **Apa sih tips penggunaannya?**

- Gunakan Reactive untuk variabel yang sering berubah
- Gunakan Simple untuk kontrol lebih detail
- Selalu inisialisasi controller dengan `Get.put()` atau `Get.lazyPut()`

## Penutup

State Management dengan GetX memberikan fleksibilitas dan kemudahan dalam mengelola state aplikasi Flutter, membantu membuat kode lebih bersih dan terorganisir.