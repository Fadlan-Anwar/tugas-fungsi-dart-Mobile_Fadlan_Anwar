void main() {
  print("=== [ REPOSITORY: MOBILE_Fadlan Anwar (WMA-03) ] ===");
  
  // A. Eksekusi Topik Menyapa
  sapaPagi();
  print(sapaUser("Fadlan Anwar")); 

  // B. Eksekusi Topik Luas Persegi
  infoRumus();
  int sisiInput = 10;
  if (cekSisi(sisiInput)) {
    logHasil(hitungLuas(sisiInput));
  }

  // C. Eksekusi Topik Kalkulator Diskon
  infoPromo();
  int hargaAwal = 250000;
  int diskonPersen = 15;
  print("Barang seharga ${formatRp(hargaAwal)} diskon $diskonPersen%");
  print("Total Bayar: ${formatRp(hitungTotal(hargaAwal, diskonPersen).toInt())}");
  
  print("====================================================");
}

// ---------------------------------------------------------
// TOPIC A: MENYAPA (Gaya Santai)
// ---------------------------------------------------------

// 1. Function Declaration
void sapaPagi() {
  print("Halo Boss! Semangat ngoding Dart pagi ini.");
}

// 2. Function Expression
var sapaUser = (String nama) {
  return "Selamat Datang, Dr. $nama di Sistem Mobile.";
};

// 3. Arrow Function
void sapaMalam() => print("Sudah malam Boss, istirahat dulu!");

// 4. Parameter & Return (Versi Singkat)
String pesanCustom(String pesan) => "Notifikasi: $pesan";


// ---------------------------------------------------------
// TOPIC B: KALKULATOR LUAS PERSEGI
// ---------------------------------------------------------

// 1. Function Declaration
void infoRumus() {
  print("Info: Luas Persegi dihitung dengan Sisi dikali Sisi.");
}

// 2. Function Expression
var logHasil = (int hasil) {
  print("Hasil Akhir Perhitungan Luas: $hasil satuan");
};

// 3. Arrow Function
bool cekSisi(int s) => s > 0;

// 4. Parameter & Return
int hitungLuas(int sisi) {
  return sisi * sisi;
}


// ---------------------------------------------------------
// TOPIC C: KALKULATOR DISKON
// ---------------------------------------------------------

// 1. Function Declaration
void infoPromo() {
  print("PEMBERITAHUAN: Promo Spesial Member WMA-03 Aktif!");
}

// 2. Function Expression
var formatRp = (int nominal) {
  return "Rp ${nominal.toString()}";
};

// 3. Arrow Function
double cekPotongan(int h, int d) => (h * d) / 100;

// 4. Parameter & Return
double hitungTotal(int harga, int diskon) {
  double potongan = (harga * diskon) / 100;
  return harga - potongan;
}