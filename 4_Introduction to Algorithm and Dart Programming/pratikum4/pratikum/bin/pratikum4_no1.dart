void main() {
  Lingkaran lingkaran = Lingkaran(18.5);
  
  print("Luas = ${lingkaran.getLuas()}cm");
}
class Lingkaran {
  double phi = 3.14; //nilai 22/7 jika dibagi sama dengan 3.14
  double r;
  
  Lingkaran(this.r);
  
  void setJariJari(double r) {
    this.r = r;
  }
  
  double getLuas() {
    return phi*(r * r);
  }
}
