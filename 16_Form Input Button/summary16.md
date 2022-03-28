Nama : Macharani Raschintasofi
Kelad : D

Container memberikan tampilan seperti sebuah box , dan dapat membungkus widget lain serta bisa menggunakan margin atau padding dan bisa diberi style atau border

margin : jarak antara container dengan bagian luar container

padding : jarak antara child dengan containernya

decoration : style

child : tempat memberikan widget lainnya yang terdapat dalam container

widgetCenter: memenuhi ruang dibagian lebar dan tinggi ruang didalamnya dan membungkus widget lain sebagai child nya , setiap child yang menjadi widget center akan diletakan ditengah

SixedBox : Bentuk sederhana dari container karena hanya memiliki beberapa properti (width,height,child) yang tugasnya mengatur lebar dan tinggi widget nya

multi child layout : digunakan jika ingin memakai properti child lebih dari 1 , dan menggunakan properti childern yang tipenya array widget , ( coloum : mengatur widgets secara vertikal),

Row : mengatur widgets agar disusun secara horizontal

ListView : Mengatur widget dalam bentuk list yang bisa di scroll

GridView: dapat mengatur widget childern nya dalam bentuk galeri , dapan menggunakan GridView.count untuk mengatur jumlah grid view

Flutter Form :

Form: Digunakan untuk berinteraksi dengan pengguna dimana form dapat menerima data yang diisi oleh user da data bisa lebih dari 1 , menggunakan stl GlobalKey<FormState>

Input :
Text Field : Digunakan untuk menerima isian data dari pengguna , data yag diisi bisa lebih dari 1 . Data diambil mengunakan TextEditingController
