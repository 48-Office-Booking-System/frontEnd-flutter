import 'package :https/http.dart' as http;

void main()async{
  Url url = Url.("https://api.quran.sutanlab.id/surah");
  var res =await http.get(url);

  print (res.body);
}