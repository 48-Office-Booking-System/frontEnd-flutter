Nama : Macharani Raschintasofi
Kelas : D

Finite State Machine
-Mesin yang memiliki sejumlah state
-Tiap state menunjukkan apa yang terjadi sebelumnya
Contoh :
Terdapat 3 state kejadian dalam suatu proses
-IDDLE saat tidak terjadi proses
-RUNNING saat proses sedang berjalan
-ERROR saat proses gagal diselesaikan

Jika sukses
-IDDLE berubah menjadi RUNNING saat proses berjalan
-RUNNING kembali menjadi IDDLE saat proses selesai

Jika gagal
-IDDLE berubah menjadi RUNNING saat proses berjalan
-RUNNING menjadi ERROR saat terjadi kegagalan
-ERROR kembali menjadi IDDLE
