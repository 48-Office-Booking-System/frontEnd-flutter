//  NOMOR 1
//Buatlah sebuah fungsi dengan spesifikasi sbg berikut: 
//  a. menerima 2 parameter , yaitu list data dan penggali 
//  b. lakukan perulangan pada list data secara Async(),
//  c. tiap perulangan , kalikan elemen list data dengan penggali 
//  d. return list baru yang berisis hasil proses diatas

Future<List>nomor1(List listData,int penggali){
  var data=[];
  int i = 0;
  do{
    int masuk =  listData[i]*penggali;
    data.add(masuk);
    i++;

  }while(i < listData.length);
  return Future.delayed(Duration(seconds:2),(){
    return data;
  });
  }

void main()async{
  int penggali = 10;
  var listData = [1,2,3,4,5,6,7,8,9,10];
   print('Jumlah baris Data');
  print(listData.length);
    print('Hasil kali list dengan penggali');
  print(listData);
  var listData2 = await nomor1(listData,penggali);
  print('Jumlah baris Data');
  print(listData2.length);
  print('Hasil kali list dengan penggali');
  print(listData2);
}