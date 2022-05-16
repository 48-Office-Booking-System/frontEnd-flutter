import 'package :https/http.dart' as http;

void main()async{
  Uri url = Uri.("https://api.quran.sutanlab.id/surah");
  var res =await http.get(url);

  print (res.body);
}