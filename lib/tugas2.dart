class Mobil {
  String namaHewan;
  int kapasitasMobil = 100;

  Mobil(this.namaHewan);

  void angkutHewan(Hewan hewan) {
    if (hewan.berat < kapasitasMobil) {
      print("Mengangkut ${hewan.nama} dengan berat ${hewan.berat}");
    } else {
      print("${hewan.nama} tidak dapat diangkut karena beratnya melebihi kapasitas mobil.");
    }
  }
}

class Hewan {
  String nama;
  int berat;

  Hewan(this.nama, this.berat);
}

Future<List<int>> perkalianList(List<int> data, int pengali) async {
  List<int> hasil = [];

  for (var berat in data) {
    await Future.delayed(Duration(seconds: 1), () {
      // Simulasi operasi asynchronous (delayed selama 1 detik).
      hasil.add(berat * pengali);
    });
  }
  return hasil;
}

void main() async {
  Mobil mobilSaya = Mobil("Mobil Angkut Hewan");

  List<Hewan> hewanList = [
    Hewan("Sapi", 80),
    Hewan("Kambing", 70),
    Hewan("Gajah", 150),
    Hewan("Ayam", 2),
  ];

  print("Nama Mobil: ${mobilSaya.namaHewan}");
  print("Kapasitas Mobil: ${mobilSaya.kapasitasMobil}");

  for (var hewan in hewanList) {
    mobilSaya.angkutHewan(hewan);
  }

  List<int> data = [10, 20, 30, 40, 50];
  int pengali = 2;

  List<int> hasilPerkalian = await perkalianList(data, pengali);
  print("Hasil Perkalian: $hasilPerkalian");
}