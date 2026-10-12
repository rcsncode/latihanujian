import 'dart:io';

void main(){
  var jalan = true;
  var ceklogin = true;
  var pin = 4567;

void login(){
  stdout.writeln('Masukkan PIN untuk login:');
  var pinuser = int.parse(stdin.readLineSync()!);
  if (pinuser == pin) {
    ceklogin = false;
  } else {
    stdout.writeln('pin anda salah, silahkan login kembali');
  }
}

void tampilmenu(){
  print('=========================');
  print('    BIOSKOP MINI KITA');
  print('=========================');
  print('1. Lihat Daftar Film & Kursi');
  print('2. Pesan Tiket Film');
  print('3. Cek Status Kursi Bioskop');
  print('4. Keluar');
  print('=========================');
}

List<Map<String, dynamic>> daftarfilm = [
  {'judul': 'Film A', 'kursi': 50},
  {'judul': 'Film B', 'kursi': 30},
  {'judul': 'Film C', 'kursi': 20},
];

void lihatdaftarfilm(){
  print('Daftar Film & Kursi:');
  for (var i = 0; i < daftarfilm.length; i++) {
    var film = daftarfilm[i];
    print('${i + 1}. ${film['judul']} - Kursi Tersedia: ${film['kursi']}');
  }
}

void pesantiketfilm(){
  stdout.writeln('Pilih angka film yang ingin dipesan:');
  var pilihanfilm = int.parse(stdin.readLineSync()!);
  if (pilihanfilm == 1){
    if (daftarfilm[0]['kursi'] > 0) {
      daftarfilm[0]['kursi'] -= 1;
      stdout.writeln('Tiket untuk Film A berhasil dipesan. Sisa kursi: ${daftarfilm[0]['kursi']}');
    } else {
      stdout.writeln('Maaf, kursi untuk Film A sudah habis.');
    }
  } else if (pilihanfilm == 2){
    if (daftarfilm[1]['kursi'] > 0) {
      daftarfilm[1]['kursi'] -= 1;
      stdout.writeln('Tiket untuk Film B berhasil dipesan. Sisa kursi: ${daftarfilm[1]['kursi']}');
    } else {
      stdout.writeln('Maaf, kursi untuk Film B sudah habis.');
    }
  } else if (pilihanfilm == 3){
    if (daftarfilm[2]['kursi'] > 0) {
      daftarfilm[2]['kursi'] -= 1;
      stdout.writeln('Tiket untuk Film C berhasil dipesan. Sisa kursi: ${daftarfilm[2]['kursi']}');
    } else {
      stdout.writeln('Maaf, kursi untuk Film C sudah habis.');
    }
  } else {
    stdout.writeln('Pilihan film tidak valid.');
  }
}

void cekstatuskursi(){
  stdout.writeln('Pilih angka film yang ingin dicek status kursinya:');
  var pilihanfilm = int.parse(stdin.readLineSync()!);
  if (pilihanfilm == 1){
    stdout.writeln('Sisa kursi untuk Film A: ${daftarfilm[0]['kursi']}');
  } else if (pilihanfilm == 2){
    stdout.writeln('Sisa kursi untuk Film B: ${daftarfilm[1]['kursi']}');
  } else if (pilihanfilm == 3){
    stdout.writeln('Sisa kursi untuk Film C: ${daftarfilm[2]['kursi']}');
  } else {
    stdout.writeln('Pilihan film tidak valid.');
  }
}

void keluar(){
  exit(0);
}

  while (jalan == true){
    if (ceklogin == true){
    login();
    } else {
      tampilmenu();
      stdout.writeln('Silakan pilih menu (1-4):');
      var pilihanmenu = int.parse(stdin.readLineSync()!);
      switch (pilihanmenu) {
        case 1:
          lihatdaftarfilm();
          break;
        case 2:
          pesantiketfilm();
          break;
        case 3:
          cekstatuskursi();
          break;
        case 4:
          keluar();
          break;
        default:
          print('Pilihan menu tidak valid');
      }

    }
  }
}