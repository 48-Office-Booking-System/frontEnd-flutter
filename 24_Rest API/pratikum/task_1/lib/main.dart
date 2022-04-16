import 'dart:convert';

import 'package:dio/dio.dart';

void main() {
  Dio()
      .get(
          'http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts')
      .then((response) {
    print(response);
  });
}

// void dua() {
//   var dataMap = {'id': 2, 'name': "John Thor", "phone": "0857676565688"};
//   var dataJSON = jsonEncode(dataMap); //DESERELISASI JSON
//   print(dataJSON);
// }

// void main() {
//   var dataJSON = '{"name": "John Thor","phone":895401010022}';
//   var dataMap = jsonDecode(dataJSON); //SENTERELISASI JSON
//   print(dataMap);
// }
