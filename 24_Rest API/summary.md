Nama : Macharani Raschintasofi
Kelas : D

REST API
(Respresentational State Transfer Application Programming Interface )
Jembatan antara server dengan client
yang memisahkan tampilan dengan proses bisnis . Bagian tampilan dengan proses bisnis berkirim data melalui http request

HTTP
Protokol yang digunakan untuk berkirim data pada internet , yang biasa data tersebut berbentuk media web.
-Client mengiris request
-Server mengolah dan membalas dengan memberi response yang nantinya akan ditampilkan pada aplikasi

Struktur Request
-Memiliki alamat halaman yang akan diakses
-Menunjukan/menentukan aksi apa yang akan dijalankan( get(mendapatkan data)post (mengirimkan data), put ( merubah data) , delet (menghapus data))
-Informasi tambahan terkait request yang dikirimkan jika terjadi masalah dapat dicari potensialnya di header
-Body :Data yang disertakan bersama request

Struktur Response
-Status Code : Kode mewakili kseluruhan response , baik sukses (200)gagal (400-500)
-Header
-Body

Dio
-Sebagai HTTP Client
-Dimanfaatkan untuk melakukan REST API
https://my-json-server.typicode.com/hadihamurabi/flutter-webservice/contacts

- dapat di ambil package nya

JSON ( Java Scrip Object Notation ) yang umum digunakan pasa REST API , cara penulisan yang umum digunakan adalah key dan value

Serialisasi struktur data ke bentuk JSON
-Mengubah struktur data ke bentuk JSON ( contoh Map - seri- JSON )
melakukan serialisasi menggunakan fungsi jsonEncode dari package dart:convert

Deserelisasi JSON
-Mengubah bentuk JSON ke struktur data (contoh JSON-seri-Map)
json decode
