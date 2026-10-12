import 'dart:io';

void main(){
    var jalan = true;
    var pin = 'kasir123';
    var ceklogin = true;

login(){
    stdout.writeln('Masukkan password anda:');
    var inputpassword = stdin.readLineSync();

    if (inputpassword == pin){
        ceklogin = false;
    } else {
        print('Password anda salah');
    }
}


tampilmenu(){
    print('=========================');
    print('    KASIR MINIMARKET');
    print('=========================');
    print('1. Cek Stok Barang');
    print('2. Tambah Stok (Restok)');
    print('3. Transaksi / Beli Barang');
    print('4. Keluar');
    print('=========================');
}

List<Map<String, dynamic>> daftarbarang = [
    {'nama': 'Indomie', 'stok': 10, 'harga': 3000},
    {'nama': 'Teh Botol', 'stok': 5, 'harga': 5000},
    {'nama': 'Aqua', 'stok': 20, 'harga': 2000},
    {'nama': 'Susu Ultra', 'stok': 15, 'harga': 10000},
];

cekstok(){
    print('Daftar Barang:');
    for (var i = 0; i < daftarbarang.length; i++) {
        var barang = daftarbarang[i];
        print('${i + 1}. ${barang['nama']} - Stok: ${barang['stok']}, Harga: ${barang['harga']}');
    }
}

restock(){
    stdout.writeln('Pilih angka barang yang ingin di restock');
    var pilihanbarang = int.parse(stdin.readLineSync()!);
    if (pilihanbarang == 1){
        stdout.writeln('Berapa jumlah yang ingin di restock?');
        var jumlahrestock = int.parse(stdin.readLineSync()!);
        daftarbarang[0]['stok'] += jumlahrestock;
        stdout.writeln('Stok berhasil ditambahkan');
    } else if (pilihanbarang == 2){
        stdout.writeln('Berapa jumlah yang ingin di restock?');
        var jumlahrestock = int.parse(stdin.readLineSync()!);
        daftarbarang[1]['stok'] += jumlahrestock;
        stdout.writeln('Stok berhasil ditambahkan');
    } else if (pilihanbarang == 3){
        stdout.writeln('Berapa jumlah yang ingin di restock?');
        var jumlahrestock = int.parse(stdin.readLineSync()!);
        daftarbarang[2]['stok'] += jumlahrestock;
        stdout.writeln('Stok berhasil ditambahkan');
    } else if (pilihanbarang == 4){
        stdout.writeln('Berapa jumlah yang ingin di restock?');
        var jumlahrestock = int.parse(stdin.readLineSync()!);
        daftarbarang[3]['stok'] += jumlahrestock;
        stdout.writeln('Stok berhasil ditambahkan');
    } else {
        print('Pilihan barang tidak valid');
    }
}

transaksi(){
    stdout.writeln('Pilih barang yang ingin ditransaksikan:');
    var pilihanbarang = int.parse(stdin.readLineSync()!);
    if (pilihanbarang == 1){
        stdout.writeln('Berapa jumlah yang ingin dibeli?');
        var jumlahbeli = int.parse(stdin.readLineSync()!);
        if (jumlahbeli <= daftarbarang[0]['stok']){
            daftarbarang[0]['stok'] -= jumlahbeli;
            stdout.writeln('Transaksi berhasil, stock telah dikurangi');
        } else {
            stdout.writeln('Stok tidak cukup');
        }
    } else if (pilihanbarang == 2){
        stdout.writeln('Berapa jumlah yang ingin dibeli?');
        var jumlahbeli = int.parse(stdin.readLineSync()!);
        if (jumlahbeli <= daftarbarang[1]['stok']){
            daftarbarang[1]['stok'] -= jumlahbeli;
            stdout.writeln('Transaksi berhasil, stock telah dikurangi');
        } else {
            stdout.writeln('Stok tidak cukup');
        }
    } else if (pilihanbarang == 3){
        stdout.writeln('Berapa jumlah yang ingin dibeli?');
        var jumlahbeli = int.parse(stdin.readLineSync()!);
        if (jumlahbeli <= daftarbarang[2]['stok']){
            daftarbarang[2]['stok'] -= jumlahbeli;
            stdout.writeln('Transaksi berhasil, stock telah dikurangi');
        } else {
            stdout.writeln('Stok tidak cukup');
        }
    } else if (pilihanbarang == 4){
        stdout.writeln('Berapa jumlah yang ingin dibeli?');
        var jumlahbeli = int.parse(stdin.readLineSync()!);
        if (jumlahbeli <= daftarbarang[3]['stok']){
            daftarbarang[3]['stok'] -= jumlahbeli;
            stdout.writeln('Transaksi berhasil, stock telah dikurangi');
        } else {
            stdout.writeln('Stok tidak cukup');
        }
    } else {
        print('Pilihan barang tidak valid');
    }
}

keluar(){
    exit(0);
}

    while (jalan == true){
        if (ceklogin == true){
            login();
        } else {
            tampilmenu();
            stdout.writeln('Silahkan pilih menu:');
            var pilihanmenu = int.parse(stdin.readLineSync()!);
            switch (pilihanmenu){
                case 1:
                    cekstok();
                    break;
                case 2:
                    restock();
                    break;
                case 3:
                    transaksi();
                    break;
                case 4:
                    keluar();
                default:
                    print('Pilihan menu tidak valid');
            }
        }
    }
}