# **Study Group MP - Week 3**

**Athila Ramdani Saputra**
**NIM: 103012300132**

## [![Typing SVG](https://readme-typing-svg.demolab.com/?lines=Hello+temen+temen+!;Ini+Rangkuman+W3+Athdanz😎)](https://git.io/typing-svg)

## Rangkuman Week 3: Package, Navigation dan Pengenalan State di Flutter

Di **Week 3** ini SG nya dilakukan selama 2 hari temen temen di hari pertama bersama kak **raihan** dan dihari ke dua bersama kak **aziz**, dibawah adalah rangkuman dari 2 hari pembelajaran nya tentang package, navigation, dan pengenalan state

### **DAY 1: Package dan Navigation**

#### **Apa itu Package?**

Package adalah koleksi kode dan fungsi tambahan yang membantu pengembangan aplikasi Flutter dengan lebih cepat. Package dapat mencakup utilitas, widget tambahan, atau bahkan fitur besar seperti animasi.

#### **Contoh Package:**

1. **Lottie**: Animasi berbasis JSON yang sangat ringan dan mudah diimplementasikan.
2. **Google Fonts**: Integrasi font Google untuk desain UI yang menarik.
3. **Flutter Native Splash**: Membuat splash screen secara native dan mudah.

#### **Cara Cepat Memakai Dependencies di VSCode**

1. Tekan `Ctrl + Shift + P`.
2. Ketikkan `Pub: Add Dependency`.
3. Pilih package yang ingin digunakan.

#### **Navigation**

Navigation digunakan untuk berpindah antar halaman dalam aplikasi Flutter. Cara umum adalah dengan menggunakan `Navigator.push` dan `Navigator.pop`.

**Contoh Kode Navigasi Sederhana dengan Named Routes:**

1. **Definisikan Routes di `MaterialApp`:**

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(),
    '/second': (context) => SecondPage(),
  },
);
```

2. **Navigasi ke halaman lain**

```dart
Navigator.pushNamed(context, '/second');
```

3. **Kembali ke Halaman Sebelumnya:**

```dart
Navigator.pop(context);
```

### **DAY 2: Pengenalan State di Flutter**

#### **Apa itu State?**

State adalah data atau informasi yang menggambarkan kondisi widget pada saat tertentu. Perubahan pada state akan memengaruhi tampilan widget.

#### Stateless Widget vs Stateful Widget

- **Stateless Widget**: Tidak memiliki state yang berubah. Digunakan untuk UI statis. Contoh :

```dart
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Saya Stateless!');
  }
}
```

- **Stateful Widget**: Memiliki state yang dapat berubah. Digunakan untuk UI dinamis. Contoh :

```dart
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Tambah'),
        ),
      ],
    );
  }
}

```

#### Masalah `setState` pada Aplikasi Kompleks

`setState` dapat menyebabkan masalah kinerja pada aplikasi besar karena seluruh widget terkait akan di-render ulang. Oleh karena itu, digunakan solusi seperti BLoC, Provider, atau GetX untuk pengelolaan state yang lebih efisien.

#### Widget Tree dan State Management

Widget tree adalah struktur hierarki widget yang membentuk aplikasi Flutter.
<img src="/readmeassets/images/flutter-widgets.png"></img>

#### Inherited Widget

Digunakan untuk berbagi data ke widget lain tanpa perlu melewati parameter setiap kali. Contoh sederhananya adalah penggunaan Theme dan MediaQuery.

**Contoh Inherited Widget**

```dart
class MyInheritedWidget extends InheritedWidget {
  final String data;

  const MyInheritedWidget({
    required this.data,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return data != oldWidget.data;
  }

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }
}

```

### BONUS -> Simulasi GetX

Berikut adalah contoh implementasi GetX untuk pengelolaan state dan navigasi di Flutter:

#### Setup GetX

1. Tambahkan GetX sebagai dependency:

```yaml
dependencies:
  get: ^4.6.5
```

2. Jalankan `flutter pub get`

#### Contoh code **GetX**

**Controller untuk State Management**
Controller digunakan untuk mengelola data dan logika aplikasi.

```dart
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs; // Observable variable

  void increment() {
    counter++;
  }
}

```

**UI dengan State Management**
Gunakan `Obx` untuk mendengarkan perubahan pada variabel observable.

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX State Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Counter: ${counterController.counter}",
                  style: TextStyle(fontSize: 24),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterController.increment,
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}

```

#### Navigasi dengan getX

Navigasi antar halaman menggunakan Get.to.

1. **Halaman HomePage:**

```dart
ElevatedButton(
  onPressed: () {
    Get.to(() => SecondPage(), arguments: {"message": "Hello from HomePage"});
  },
  child: Text("Go to Second Page"),
),

```

2. **Halaman SecondPage:**

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, String>?;
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Text(
          args?['message'] ?? "No Message",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

```
