//  Buatlah sebuah fungsi dengan spesifikasi sbg berikut: 
//  a. menerima 2 parameter , yaitu list data dan penggali 
//  b. lakukan perulangan pada list data secara Async(),
//  c. tiap perulangan , kalikan elemen list data dengan penggali 
//  d. return list baru yang berisis hasil proses diatas
 Future fungsi(List<int> data, int pengali) {
  return Future.delayed(Duration(seconds: 2), () {
    var proses = 0;
    for (var element in data) {
      proses = proses + element * pengali;
    }
    data.add(proses);
    return data;
  });
}


///NO 2 
class Mahasiswa{
    String firstname; String lastname;
    Mahasiswa(this.firstname, this.lastname);
    @override
    String toString(){
      return '{${this.firstname}, ${this.lastname}}';
    }
  }

void main() async {
  var hasil = await fungsi([1, 2, 3, 4], 5);
  print(hasil);
  List mahasiswa = [];
  mahasiswa.add(Mahasiswa('Macharani', 'Raschintasofi'));
  mahasiswa.add(Mahasiswa('Aida', 'Paramita'));
  mahasiswa.add(Mahasiswa('Arjuna', 'Panji'));  
  var map = Map.fromIterable(mahasiswa, key: (e) => e.firstname, value: (e) => e.lastname);
  print(map);
}

