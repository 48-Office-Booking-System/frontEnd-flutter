import 'package:flutter/widgets.dart';
import 'package:mvvm_architecture/model/api/contact_api.dart';
import 'package:mvvm_architecture/model/contact_model.dart';

import '../../test/model/api/contact_api.dart';
import '../../test/model/contact_model.dart';

enum ContactViewState {
  none,
  loading,
  error,
}

//ViwModel untuk halamanContactScreen
class ContactViewModel with ChangeNotifier {
  //menambah properti untuk menyimpan data viewwmodel
  //getter untuk state yang mengambil data dari _state
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;

//property untuk menyimpan seluru data Contact
  List<Contact> _contacts = [];

//getter untuk mengambil data dari property \_contacts
  List<Contact> get contacts => _contacts;

  //menambah setter untuk menyimpan data dri enum
  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  get getAllContactsasync async {
    changeState(ContactViewState.loading);

    try {
      final c = await ContactAPI.getAllContacts();
      _contacts = c;
      notifyListeners();
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }
//fungsi getAllContacts untuk mengambil data contacts melalui Contact API , menyimpan data contacts pada property \_contacts

  getAllContacts() async {
    final c = await ContactAPI.getContacts();
    _contacts = c;
    notifyListeners();
  }
}
