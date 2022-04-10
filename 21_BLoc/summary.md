Nama : Macharani Raschintasofi
Kelas : D

Flutter memiliki sifat declarative ( membangun UI pada screen untuk mencerminkan state saat ini )

State adalah suatu kondisi ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
Ada 2 jenis state :

-Empemeral state => Digunakaan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya ( PageView,BottomNavigationBar, SwitchButton ), state ini tidak perlu state management yang kompleks dan hanya membutuhkan stfull dengan menggunakan fungsi setState()

-App State => Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget(Login info , setting pref user , cart) yang mana kan muncul di screen yang berbeda

PENDEKATAN STATE MANAGEMENT
-setState , cocok digunakan pada ephemeral state
-Provider , untuk penggunaan yang lebih kompleks seperti app state
-Bloc, menggunakan pola stream / observable untuk memisahkan UI dengan bisnis logicnya
BLoC (Business Logic Component)
Memisahkan antara business logic dengan UI (widget)
BLoC menghubungkan antara widget dengan data

Cara kerja BLoC
-Menerima event sebagai input
-Dianalisa dan dikelola dalam BLoC
-Menghasilkan state sebagai output

Stream merupakan rangkaian proses secara async dengan actor utaman didalam BLoC
