Nama : Macharani Raschintasofi
Kelas : D

Row : Widget children diletakan secara horizontal
Column : Widget children diletakan secara vertikal

MainAxisSize Properti :
-Menentukan seberapa banyak space menempati main axis
-Properti mainAxisSize memiliki 2 value ( max & min)
-Max menempati semua space dari main axis
-Min tidak memiliki ekstra space , hanya untuk children saja

MainAxisAlignment : Digunakan Row & Coloumn untuk memposisikan children mereka di ekstra space yang ada
6 values :

- .start
- .end
- .center
- .spaceBetween
- .spaceEvenly
- .spaceAround

CrossAxisAlignment : Dogunakan Row dan Column untuk memposisikan children pada cross axis
*CrossAxis dari Row = vertikal
*CrossAxis dari Column = horizontal
5 values :

- .start
- .end
- .center
- .stretch
- .baseline

Flexibe Widget :
-Membungkus widget lain sehingga child dari flexible widget menjadi flexible atau resizable
-Berguna membuat aplikasi responsif
-Berada pada turunan parent widget Row atau Column
-Perubahan ukuran ditentukan dengan properti fit & flex
