import 'dart:io';

void main(){
  var jalan = true;

List antrian = [];
Map mesin1 = {'cucian': null};
Map mesin2 = {'cucian': null};
Map mesin3 = {'cucian': null};

void masukcucian(){
  stdout.writeln('Masukkan cucian ke mesin laundry');
  var cucian = stdin.readLineSync();
  
  if (mesin1['cucian'] == null) {
      mesin1['cucian'] = cucian;
      print('Cucian $cucian dimasukkan ke Mesin 1.');
    } else if (mesin2['cucian'] == null) {
      mesin2['cucian'] = cucian;
      print('Cucian $cucian dimasukkan ke Mesin 2.');
    } else if (mesin3['cucian'] == null) {
      mesin3['cucian'] = cucian;
      print('Cucian $cucian dimasukkan ke Mesin 3.');
    } else {
        antrian.add(cucian);
      print('Semua mesin penuh dan $cucian dimasukkan ke antrian.');
    }
}

  ambilcucian() {
    print('Selesaikan Mesin:');
    print('1. Mesin 1');
    print('2. Mesin 2');
    print('3. Mesin 3');
    stdout.write('Pilih mesin yang selesai: ');
   var pilihan = int.parse(stdin.readLineSync()!);

    pindah() {
      if (antrian.isNotEmpty) {
        return antrian.removeAt(0); 
      }
      return null; 
    }

    switch(pilihan) {
      case 1:
        var cucianselesai = mesin1['cucian'];
        mesin1['cucian'] = pindah();
        print('Mesin 1 ($cucianselesai) selesai.');
        if (mesin1['cucian'] != null) {
          print('Cucian ${mesin1['cucian']} dari antrian masuk ke Mesin 1.');
        }
        break;

      case 2:
        var cucianselesai = mesin2['cucian'];
        mesin2['cucian'] = pindah();
        print('Mesin 2 ($cucianselesai) selesai.');
        if (mesin2['cucian'] != null) {
          print('Cucian ${mesin2['cucian']} dari antrian masuk ke Mesin 2.');
        }
        break;

      case 3:
        var cucianselesai = mesin3['cucian'];
        mesin3['cucian'] = pindah();
        print('Mesin 3 ($cucianselesai) selesai.');
        if (mesin3['cucian'] != null) {
          print('Cucian ${mesin3['cucian']} dari antrian masuk ke Mesin 3.');
        }
        break;

      default:
        print('Pilihan tidak valid.');
    }
  }

void cekantrian(){
  print('Status Antrian Cucian:');
    int nomor = 1;
    for (var cucian in antrian) {
      print('$nomor. Cucian: $cucian');
      nomor++;
    }
   }

void cekmesin(){
    print('Mesin yang digunakan:');
    print('Pos A: ${mesin1['cucian']}');
    print('Pos B: ${mesin2['cucian']}');
    print('Pos C: ${mesin3['cucian']}');
  }

void keluar(){
    exit(0);
  }

  while(jalan == true){
    print('=========================');
    print('    Laundry Madura');
    print('=========================');
    print('1. Masukkan Cucian ke Mesin Laundry');
    print('2. Ambil Cucian dari Mesin Laundry');
    print('3. Cek antrian cucian');
    print('4. Cek mesin cucian');
    print('5. Keluar');
    print('=========================');
    stdout.writeln('Silakan pilih menu (1-5):');
    var pilihanmenu = int.parse(stdin.readLineSync()!);
    switch (pilihanmenu){
      case 1:
        masukcucian();
        break;
      case 2:
        ambilcucian();
        break;
      case 3:
        cekantrian();
        break;
      case 4:
        cekmesin();
        break;
      case 5:
        keluar();
        break;
      default:
        print('Pilihan menu tidak valid');
    }
  }
}