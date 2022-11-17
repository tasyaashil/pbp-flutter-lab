## Tugas 7: Elemen Dasar Flutter
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- `stateless widget` adalah widget yang tidak dapat berubah/tidak akan berubah (immutable). Konfigurasi yang dimuat didalamnya sudah diinisiasikan sejak awal. Widget ini bersifat statis dikarenakan tanpa melakukan perubahan data. 
- `stateful widget` adalah widget yang dapat berubah (mutable). stateful widget dapat merespon terhadap interaksi user dan dapat merubah perubahan data. Untuk mengubah perubahan data, data akan dimanipulasi dan diubah dengan memanggil fungsi setState().
- Pada umunya stateless widget dan stateful widget digunakan dalam satu file dart. Pada intinya, perbedaan yang cukup terlihat adalah jika stateless widget tidak dapat berubah, sedangkan stateful widget dapat berubah. Contoh pada stateless widget adalah Text, Icon, IconButton, dan lainnya. Sedangkan contoh stateful widget adalag Checkbox, Radio, TextField, dan lainnya.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Scaffold = Untuk mengatur visual layout dengan mengimplementasikan material design.
2. Row = Untuk mengatur layout secara horizontal.
3. Column = Untuk mengatur layout secara vertikal.
4. Center = Untuk mengatur posisi supaya berada di tengah.
5. MaterialApp = Merupakan sebuah parent yang didalamnya menerapkan style material design.
6. FloatingActionButton = Untuk membuat sebuah button.
7. Text = Untuk menampilkan text.
8. TextStyle = Untuk memberikan styling tehadap text.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` memiliki fungsi untuk merencanakan pembaruan terhadap objek komponen, dimana komponen tersebut akan merespon dan me-render ulang. Yang terdampak terhadap fungsi tersebut contohnya pada tugas ini ialah pada fungsi _color, yaitu adanya perubahan warna ketika bernilai genap dan ganjil.

## Jelaskan perbedaan antara const dengan final.
- `const` digunakan pada variabel immutable yang nilainya bersifat konstan. Const harus sudah diketahui pada saat waktu compile-time yang artinya nilai dari variabel tersebut sudah diberikan secara langsung. 
- `final` diinialisasi pada saat pertama kali digunakan dan hanya di setting sekali. Final dapat digunakan untuk variabel immutable yang nilainya sudah/belum diketahui saat compile-time.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat aplikasi dengan menjalankan perintah `flutter create counter_7`.
2. Membuat variabel counter untuk menampilkan angka, text untuk mendeklarasikan tulisan genap, dan color bewarna merah pada class _MyHomePageState.
3. Pada fungsi _incrementCounter membuat if-else condition untuk kondisi ketika angka bernilai genap/ganjil beserta dengan text dan warna yang disesuaikan jika angka bernilai genap maka akan menampikan text genap dan bewarna merah. Kemudian jika angka bernilai ganjil maka akan menampilkan text ganjil dan bewarna biru
4. Pada fungsi _decrementCounter membuat if-else condition untuk kondisi yang sama pada fungsi _incrementCounter, bedanya terdapat kondisi supaya tidak dapat mengurangi kurang dari 0.
5. Membuat isi field floatingActionButton dengan berisikan child untuk membuat button decrement dan increment.
6. Menjalankan aplikasi dengan perintah `flutter run`
7. Melakukan add, commit, dan push pada repositori `pbp-flutter-lab`.

## Tugas 8: Flutter Form
## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
1. Navigator.push merupakan metode push untuk menambahkan rute lain ke atas tumpukan, jadi menampilkan halaman baru dan tetap dapat mengakses halaman sebelumnya.
2. Navigator.pushReplacement merupakan metode push yang membuang rute sebelumnya sehingga jika berpindah halaman tidak dapat kembali ke halaman sebelumnya.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. ListView = Untuk menampilkan list dengan jumlah data yang besar.
2. ListTile = Untuk menampilkan detail dari sebuah children.
3. Drawer = Untuk navigasi antar page.
4. SizedBox = Untuk mengatur ukuran box.
5. DropdownButton = Untuk membuat button pilihan.
6. Form = Untuk membukus form field.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. onPressed = Untuk mengeksekusi jika sebuah widget diklik.
2. onChanged = Untuk mengeksekusi jika sebuah widget diubah.
3. onHover = Untuk mengeksekusi jika pointer bergerak dalam sebuah widget.
4. onSaved = Untuk mengeksekusi jika sebuah widget disiimpan.
5. onFocusChanged = Untuk mengeksekusi jika fokus berubah.

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator pada flutter serupa dengan implementasi stack. Sehingga jika melakukan "push" akan menuju suatu halaman dan untuk mengembalikannya menggunakan "pop". "push" menambahkan halaman pada antrian teratas stack dan "pop" mengurangi halaman pada antrian stack.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan drawer dengan tiga navigasi untuk menuju counter_7, tambah budget, dan data budget pada `main.dart`.
2. Membuat file baru untuk halaman form bernama `formtambah.dart` yang berisikan navigator tiga halaman, penampilan data dan modelsnya.
3. Membuat elemen Strung judul, double nominal, Strimg jenis, dan untuk list serta model data.
4. Membuat file data untuk menampilkan data pada halaman data budget.
5. Membuat file model untuk data yang ditampilkan pada halaman data budget.
6. Melakukan add, commit, dan push untuk melakukan perubahan.
