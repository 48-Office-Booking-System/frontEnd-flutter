Nama : Macharani Raschintasofi
Kelas : D

MVVM (ModelView View Model)
Memisahlan logic dengan tampilan UI (View)kedalam view model

Keuntungan menggunakan MVVM :

1. Reusability : Jika ada tampilan yang memerlukan alur logic yang sama, maka mereka bisa menggunakan ViewModel yang sama ( dapat meningkatkan efisiensi)
2. Maintainability : Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic( membantu membedakan antara logic dan tampilan )
3. Testability : Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapay meningkatkan produktivitas pada pengujian

Melakukan MVM
Struktur Direktori :

- Model memiliki 2 bagian , yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
  contoh :
  lib
  model -//bentuk data
  api-- //sumber data
  --contact_api.dart//sumber data
  -contact_model.dart// bentuk data

- Tiap screen diletakan dalam sebuah direktori yang didalamnya tedapat View dan ViewModel
  lib
  screen
  contact
  -contact_screen.dart //view
  --contact_view_model.dart//viewModel

Model :

- Bentuk data yang akan digunaan ,dibuat dalam bentuk class
- Data-data yang dimuat , diletakkan pada property
  contoh :
  class Contact {
  final int id ;
  final String name; //property
  final String phone;

  Contact ({required this.id, required this.name , required this.phone}); // constructor
  }

Model API:
class ContactAPI {
//getContacts digunakan untuk mengambil data dari server
//dengan metode REST API
//dan mengubah data tersebut kedalam bentuk class Contact

static Future<List<Contact>>getContacts()async{

    final response = await Dio()
      .get'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');

      List<Contact>contacts = (response.data as List)
      .map((e)=> Contact
      (id: e['id'],
      name: e['name'],
      phone:e['phone']),
      )
      .toList();

      return contacts;

}
}

ViewModel

- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen
  -Jika widget lain memerlukan logic yang sama , dapat menggunakan ViewModel ini juga

//ViwModel untuk halamanContactScreen
class ContactViwModel with ChangeNotifier{
//property untuk menyimpan seluru data Contact
List<Contact> \_contacts =[];

//getter untuk mengambil data dari property \_contacts
List<Contact> get contacts => \_contacts;

//fungsi getAllContacts untuk mengambil data contacts melalui Contact API , menyimpan data contacts pada property \_contacts

getAllContacts ()async{
final c=await ContactAPI.getContacts();
\_contacts=c;
notifyListeners();
}
}

Mendaftarkan ViewModel

- Menggunakan MultiProvider agar dapat digunakan banyak provider
  -Material App sebagai child utama
