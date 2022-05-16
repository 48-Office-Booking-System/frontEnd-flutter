// void main(){
//   List siswa =[
//     ["nama :","Wawan"],
//     ["umur :","17"]
//   ];
//   Map a = {};

//   for(var item in siswa){
//     // print(i);
//     a[item[0]]=item[1];
//   }
//   print(a);
// }

void main (List<String>arguments)async{
  //step 1 buat variabel list yang ada 2 data berupa list juga
  //step 2 buat variabel map yang isinya dari hasil step 1

 List<List<String>>kendaraans = [
   ["Mobil:","Jazz"],
   ["Motor:","Ninja R"]
 ];

  Map<String,String> myNewList={};
    // kendaraans.forEach((element){
      for(List<String>element in kendaraans){
      myNewList[element[0]]=element[1];  
      }
      print(myNewList);
    
}