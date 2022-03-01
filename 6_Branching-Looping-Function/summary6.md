Nama : Macharani Raschintasofi
Kelas : D

if
-Memerlukan nilai bool
-Menjalankan bagian proses jika nilai bool true
contoh input :

---

void main(){
var usia = 18;
if (usia<20){
print('Remaja');
//jika usia kurang dari 20 , maka screen show Remaja
}
}

## // output -> Remaja

if- else

- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false
  contoh input:

---

void main(){
var usia = 21;
if (usia<20){
print('Remaja');
//jika usia kurang dari 20 , maka screen show Remaja
}else {
print('Dewasa');
//usia lebih dari 20 jadi screen show Dewasa

}
}

## // output -> Dewasa

else - if
-Berjalan dengan if
-Menambah alternatif jika nilai bool lain
contoh input :

---

void main(){
var usia = 51;
if (usia < 20){
print('Remaja');
//jika usia kurang dari 20 , maka screen show Remaja
}else if (usia > 50){
print('Lansia');
}else {
print('Dewasa');
//usia lebih dari 20 jadi screen show Dewasa
}
}

## // output -> Lansia

for
-Diketahui beberapa kali perulangan terjadi
-Memerlukan nilai awal
-Memerlukan nilai bool , jika true perulangan dilanjut
-Memerlukan pengubah nilai
contoh input:

---

void main(){
for(var i= 0; i<= 10; i +=1){
print(i);
}
}

## // output -> (tampilan 0 sampai 10 menurun)

while
-Tidak diketahui berapakali perulangan terjadi
-Memerlukan nilai bool, jika true perulangan dilanjutkan
contoh input:

---

void main(){
var i = 0;
while(i < 10) {
print(i);
i++;
}
}

## // output -> (tampilan 0 sampai 9 menurun)

do-while
-menubah bentuh while
-proses dijalankan minimal sekali , akan diteruskan jina nilai bool adalah true
contoh input :

---

void main(){
var i = 1;
do{
print(i);
i++;
} while(i < 10);
}

## // output -> (tampilan 1 sampai 9 menurun)

break : Menghentikan seluruh proses perulangan

---

void main(){
for(var i = 0; true; i++){
if (i == 11){ // jika i adalah 11 stop looping di 10
break;
}
print(i);
}
}

## // output -> (tampilan 0 sampai 10 menurun)

continue : Menghentikan satu kali proses perulangan

---

void main(){
for(var i = 0; i < 10; i+=1){
if(i == 5){
continue; // jika i adalah 5 , looping dilewati
}
print(i);
}
}

## // output -> (tampilan 0 sampai 9 menurun nilai 5 dilewati)

fungsi : Kumpulan kode yang dapat digunakan ulang

---

int jumlah(int a,int b){
return a + b;
}
void main(){
var hasil = jumlah(1, 2);
print(hasil);
}

## // output -> (3)
