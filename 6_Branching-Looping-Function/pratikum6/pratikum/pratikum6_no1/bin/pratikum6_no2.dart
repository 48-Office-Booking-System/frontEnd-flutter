//Tampilkan nilai faktorial dari 
// 10, 20,30 
// int fact(int n){                    //(opsi1 hapus opsi 2)
// if(n==0) return 1;
// return n*fact(n-1); //Faktorial  tidak didefinisikan untuk  bilangan negatif  dan  faktorial  dari nol adalah satu, 0! = 1 
// }

int fact(int num){
  int fact = 1;
  for(var i = num ; i>=1;i--){
    fact *= i;                    // (opsi 2 hapus opsi 1)
  }
  return fact;
}
void main(){
print('nilai faktorial 10:${fact(10)}');
print('nilai fakrorial 20:${fact(20)}');
print('nilai faktorial 30:${fact(30)}');
}
