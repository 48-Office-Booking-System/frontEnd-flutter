Nama : Macharani Raschintasofi
Kelas : D

Assets: file yang dibundle dan di deployed bersamaan dengan aplikasi (tipe JSON files , icon , images & font file /ttf)

- Untuk menggunakan assets gunakan karakter "/" untuk memasukan semua assets dalam 1 directory name.(Assets: \n -assets/(lokasi))

Image tipe : (jpeg,webp,gif,animated web/gif,png,bmp,wbmp) untuk mendapatkan image bisa dari assets maupun internet

Loading Image menggunakan widget image dan membutuhkan properti image dan class AssetImage()

untuk penulisan :
*image.assets('assets/background.jpg'),
*image.network('(isi string url)')

Font :
-Download di fonts.google.com
-Import file ttf
-Daftarkan font di pubspec.yaml
(fonts:
-family :Rowdies
fonts:
-assets:fonts/Rowdies-Bold(atau light atau regular).ttf)
-Atur font sebagai default dengan themeData
-Gunakan font di spesifik widget
Aplikasi Task Management()

Font dari package :
-sc ctrl+shift+p
-pilih dart & dependencies
-klik google_fonts
