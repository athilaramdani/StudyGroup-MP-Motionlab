# **Study Group MP - Week 5**

**Athila Ramdani Saputra**  
**NIM: 103012300132**

## [![Typing SVG](https://readme-typing-svg.demolab.com/?lines=Hello+temen+temen+!;Ini+Rangkuman+W5+Athdanz😎)](https://git.io/typing-svg)

## Rangkuman Week 5: Screen Utility, Theme, dan Penggunaan GetX dengan Bindings

Di **Week 5** ini, yang dimentoring oleh bang **Aziz** dan **raihan**, kita mempelajari bagaimana menggunakan **state management** GetX di Flutter.

### **1. Screen Utility dan Theme**

#### Screen Utility
Screen Utility adalah konsep yang digunakan untuk memastikan tampilan aplikasi dapat beradaptasi dengan berbagai ukuran layar perangkat.

- **Responsiveness**: Pastikan UI terlihat baik di berbagai perangkat.
- **Font Scaling**: Sesuaikan ukuran teks berdasarkan dimensi layar.
- **Padding dan Margin Dinamis**: Gunakan ukuran yang fleksibel untuk elemen UI.

#### Theme
Theme digunakan untuk mengatur tampilan global aplikasi, seperti warna, font, dan gaya UI lainnya.

### **2. Bindings: Mengelola Dependensi dengan GetX**

Bindings adalah fitur di GetX yang digunakan untuk menginisialisasi dan mengelola dependensi, seperti controller atau service.

#### **Mengapa Menggunakan Bindings?**
- **Efisiensi Memori**: Dengan `lazyPut`, controller hanya akan dimuat saat diperlukan dan akan dihapus dari memori saat tidak digunakan.
- **Organisasi Kode**: Memisahkan inisialisasi dependensi dari logika UI membuat kode lebih terstruktur.

#### **Cara Kerja Bindings**
1. **LazyPut**: Menginisialisasi controller dengan disposisi otomatis dari memori.
   ```dart
   class MyBindings extends Bindings {
     @override
     void dependencies() {
       Get.lazyPut<MyController>(() => MyController());
     }
   }
   ```

2. **Penerapan Bindings**: Bindings diterapkan di `GetMaterialApp` atau pada route tertentu.
   ```dart
   GetMaterialApp(
     initialBinding: MyBindings(),
     home: MyHomePage(),
   );
   ```

#### **Cara Lain Memanggil Controller Menggunakan Bindings**
Bindings juga bisa digunakan untuk mengambil data dari controller:

```dart
final MyController controller = Get.find<MyController>();
```

### **3. Model: Representasi Data**
Model digunakan untuk menyimpan dan memproses data. Di GetX, model biasanya dikelola di dalam controller.

#### Contoh Model:
```dart
class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
```

Model dapat digunakan untuk memproses informasi yang diolah oleh controller.

### **4. SetState vs GetX**

- **SetState**: Memicu rebuild widget secara manual dari atas.
  ```dart
  setState(() {
    counter++;
  });
  ```

- **GetX**: Menggunakan CLI atau fitur reaktif untuk pembaruan otomatis.
  ```dart
  Obx(() => Text(controller.counter.toString()));
  ```

### **5. GetX CLI**
GetX memiliki Command Line Interface (CLI) untuk mempermudah pengembangan aplikasi Flutter.

#### **Fitur Utama GetX CLI:**
- Membuat file controller, model, dan view secara otomatis.
- Mengelola struktur folder proyek lebih rapi.

**Install GetX CLI:**
```bash
pub global activate get_cli
```

**Contoh Penggunaan CLI:**
1. Membuat proyek baru:
   ```bash
   get create project
   ```
2. Menambahkan page baru:
   ```bash
   get create page:home
   ```

### **Penutup**
kita dapat membuat aplikasi Flutter yang responsif, terstruktur, dan efisien dalam manajemen memori apalagi menggunakan GetX CLI untuk mempercepat pengembangan! 🚀

