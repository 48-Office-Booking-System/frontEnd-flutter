Nama : Macharani Raschintasofi
Kelas : D

Testing
Dapat menemukan bug / masalah pada aplikasi

UI Testing / Widget Testing
Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna

Pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis

Keuntungan UI Testing :
-Memastikan seluruh widget memberi tampilan yang sesuai
-Memastikan seluruh interaksi dapat diterima dengan baik
-Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

Melakukan UI Testing :

- Instalasi package testing
  (Biasanya sudah ada di sejak pertama kali projek dibuat , bisa juga dilakukan dengan manual instalasinya dengan $flutter pub get di term)
  -Penulisan pada folder test
  (Dilakukan pada folder test , nama file harus diikuti \_test.dart " contoh : contact_test.dart )
  -Penulisan script testing
  (Tiap file berisi fungsi main() yang didalamnya dapat dituliskan script testing , Tiap skenario pengujian disebut test case)
  -Script Testing
  (Test case diawali dengan testWidgets dan terdapat paramater yang berisi deskripsi/ judul dari apa yang ingin diuji ada juga pramater ke dua yang berisi anonymous function yang terdiri dari skenario, Simulasi proses mengaktifkan AboutScreen , Memeriksa apakah di halaman tersebut terdapat teks "About Screen" )
  -Menjalankan Testing (Perintah flutter test akan menjalankan seluruh file test yang dibuat dengan $ flutter test , Hasil dari perintah adalah lamanya waktu pengujian , total pengujian yang dilakukan , dan pesan bahwa pengujian berhasil )
  -Menjalankan Testing gagal maka akan ditampilkan penyebab gagalnya
