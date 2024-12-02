# **Study Group MP - Week 2**

**Athila Ramdani Saputra**  
**NIM: 103012300132**

---

## Rangkuman Week 2: Flutter Widget Fundamentals

### Pengenalan Widget

rangkuman **Week 2 Flutter** bersama Kak Indra Mahesa! Dalam sesi ini, kami mempelajari widget pada **Flutter**
Widget adalah blok bangunan dasar dalam pengembangan aplikasi Flutter, yang mendeskripsikan bagaimana tampilan aplikasi seharusnya terlihat berdasarkan konfigurasi dan state saat ini. Setiap widget membuat deskripsi dari bagian antarmuka pengguna.

### Widget Esensial dalam Flutter

#### 1. Scaffold

Widget yang menyediakan struktur dasar untuk aplikasi, termasuk AppBar, body, dan properti lain yang umum digunakan.

```dart
Scaffold(
  appBar: AppBar(
    title: Text('Contoh Scaffold'),
  ),
  body: Center(
    child: Text('Konten Utama Aplikasi'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
)
```

#### 2. Container

Widget serbaguna untuk mengatur layout, padding, margin, dan dekorasi elemen UI.

```dart
Container(
  width: 200,
  height: 100,
  margin: EdgeInsets.all(16),
  padding: EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Center(
    child: Text(
      'Contoh Container',
      style: TextStyle(color: Colors.white),
    ),
  ),
)
```

<img src="/readmeassets/images/container.png" alt="Gambar container" width="300"/>

#### 3. Text

Menampilkan dan menata teks dalam berbagai gaya.

```dart
Text(
  'Halo, Flutter!',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.green,
  ),
)
```

<img src="/readmeassets/images/text.png" alt="Gambar text" width="300"/>

#### 4. Image

Menampilkan gambar dari berbagai sumber.

```dart
// Gambar dari asset lokal
Image.asset('assets/logo.png', width: 100, height: 100)

// Gambar dari jaringan
Image.network(
  'https://example.com/image.jpg',
  width: 200,
  height: 200,
  fit: BoxFit.cover,
)
```

<img src="/readmeassets/images/image.png" alt="Gambar image" width="300"/>

#### 5. Icon

Menampilkan ikon bawaan atau kustom.

```dart
Icon(
  Icons.favorite,
  color: Colors.red,
  size: 48,
)
```

<img src="/readmeassets/images/icon.png" alt="Gambar icon" width="300"/>

### Layout Widgets

#### Row dan Column

Mengatur widget secara horizontal (Row) atau vertikal (Column).

```dart
// Contoh Row dengan Container berwarna
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(color: Colors.red, width: 50, height: 50),
    Container(color: Colors.green, width: 50, height: 50),
    Container(color: Colors.blue, width: 50, height: 50),
  ],
)
```

<img src="/readmeassets/images/row.png" alt="Gambar row" width="300"/>

```dart
// Contoh Column dengan Container berwarna
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(color: Colors.purple, width: 100, height: 50),
    Container(color: Colors.orange, width: 100, height: 50),
    Container(color: Colors.teal, width: 100, height: 50),
  ],
)
```

<img src="/readmeassets/images/column.png" alt="Gambar column" width="300"/>

#### GridView

Menampilkan widget dalam grid.

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: 6,
  itemBuilder: (context, index) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length],
    );
  },
)
```

<img src="/readmeassets/images/gridview.png" alt="Gambar grid" width="300"/>

### Routing dan Navigasi

Routing dalam Flutter memungkinkan navigasi antar halaman. Dalam aplikasi ini, routing diatur dalam `MaterialApp` dengan mendefinisikan `home` dan `routes`.

#### Navigator

`Navigator` adalah widget yang mengelola tumpukan halaman (stack of pages) dalam aplikasi. Dengan menggunakan `Navigator.pushNamed`, kita dapat berpindah ke halaman lain dengan mudah. Contoh penggunaan `Navigator` terdapat dalam komponen `ProductCard`, dimana aplikasi akan mengarahkan pengguna ke halaman detail produk.

```dart
Navigator.pushNamed( context, '/detail', arguments: { 'title': title, 'price': price, 'image': image, 'isFavorite': isFavorite, 'description': description ?? "tidak ada deskripsi", }, );
```

### Pengiriman Argumen

mengirimkan argumen berupa informasi dari halaman pengirim ke halaman yang dikirim, dengan menggunakan `ModalRoute.of(context)?.settings.arguments` dan disimpan menjadi `Map<String, dynamic>`.

Halaman/componen pengirim

```dart
return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/detail',
          arguments: {
            'title': title,
            'price': price,
            'image': image,
            'isFavorite': isFavorite,
            'description': description ?? "tidak ada deskripsi",
          },
        );
      },
)
...
```

Halaman/Componen Penerima

```dart
 final Map<String, dynamic> product =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

```
