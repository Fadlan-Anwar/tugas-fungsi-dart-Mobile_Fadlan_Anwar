void main() {
  print("=== [ REPOSITORY: MOBILE_Fadlan Anwar (WMA-03) ] ===");
  
  
  sapaPagi();
  print(sapaUser("Fadlan Anwar")); 

  infoRumus();
  int sisiInput = 10;
  if (cekSisi(sisiInput)) {
    logHasil(hitungLuas(sisiInput));
  }

  infoPromo();
  int hargaAwal = 250000;
  int diskonPersen = 15;
  print("Barang seharga ${formatRp(hargaAwal)} diskon $diskonPersen%");
  print("Total Bayar: ${formatRp(hitungTotal(hargaAwal, diskonPersen).toInt())}");
  
  print("====================================================");
}
void sapaPagi() {
  print("Halo Boss! Semangat ngoding Dart pagi ini.");
}

var sapaUser = (String nama) {
  return "Selamat Datang, Dr. $nama di Sistem Mobile.";
};

void sapaMalam() => print("Sudah malam Boss, istirahat dulu!");

String pesanCustom(String pesan) => "Notifikasi: $pesan";

void infoRumus() {
  print("Info: Luas Persegi dihitung dengan Sisi dikali Sisi.");
}

var logHasil = (int hasil) {
  print("Hasil Akhir Perhitungan Luas: $hasil satuan");
};

bool cekSisi(int s) => s > 0;

int hitungLuas(int sisi) {
  return sisi * sisi;
}

void infoPromo() {
  print("PEMBERITAHUAN: Promo Spesial Member WMA-03 Aktif!");
}

var formatRp = (int nominal) {
  return "Rp ${nominal.toString()}";
};

double cekPotongan(int h, int d) => (h * d) / 100;

double hitungTotal(int harga, int diskon) {
  double potongan = (harga * diskon) / 100;
  return harga - potongan;
}