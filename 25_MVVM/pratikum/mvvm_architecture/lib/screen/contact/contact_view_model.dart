import 'package:flutter/widgets.dart';
import 'package:mvvm_architecture/model/api/contact_api.dart';
import 'package:mvvm_architecture/model/contact_model.dart';

//ViwModel untuk halamanContactScreen
class ContactViewModel with ChangeNotifier {
//property untuk menyimpan seluru data Contact
  List<Contact> _contacts = [];

//getter untuk mengambil data dari property \_contacts
  List<Contact> get contacts => _contacts;

//fungsi getAllContacts untuk mengambil data contacts melalui Contact API , menyimpan data contacts pada property \_contacts

  getAllContacts() async {
    final c = await ContactAPI.getContacts();
    _contacts = c;
    notifyListeners();
  }
}
