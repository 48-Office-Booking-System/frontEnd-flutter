// void main()async{
//   List<int> list = [23,24,35];
//   int kali =2;
//   List<int> fungsi  (List<int>array,int penggali){
//     List<int>tampung=[];
//     for(int i=0;i<list.length;i++){
//       int num = array[i]*penggali;
//       tampung.add (num);
//     }
//     return tampung;
//   }
//   print(fungsi(list,kali));
// }




// void main(List<String>arguments){
  //step 1  : buat fungsi dengan menerima 2 paramater ,parameter 1 listdata parameter 2 penggali
  //step 2  : lakukan perulangan secara async
  //step 3  : tiap perulangan kalikan tiap elemen pada paramater 1 dan paramater 2 
  //step 4  : kembalikan atau buat list baru yang berisi hasil dari proses fungsi tsb 

  // String nama = "husain";
  // List<String>namas = ["husain","nia"];
  // Future<List>futureNamas;

//   int a=0;
//   List<int>as =[0,203,404,5];
  void main(List<String> arguments) async {
// buatlah fungsi dengana menerima 2 parameter : param 1 = listdata, param 2pengali
// lakukan perulangan secara async
// tiap perulangan kalikan elemen param 1 dengan param 2
// kembalikan / buat list baru yang berisi hasil dari proses kali

  Future<List<int>> fungsiProsesKali(List<int> listDatas, int pengali) async {
    List<int> listBaru = [];

    for (int element in listDatas) {
      listBaru.add(element * pengali);
    }

    return listBaru;
  }

  List<int> newList = await fungsiProsesKali([1, 2, 3, 4], 5);

  print("Hasilnya : ${newList}");
}