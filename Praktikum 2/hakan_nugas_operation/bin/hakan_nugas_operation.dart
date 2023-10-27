import 'dart:io';
//import 'package:hakan_nugas_operation/hakan_nugas_operation.dart' as hakan_nugas_operation;

void main() {
  stdout.write("Masukkan nama: "); // Pengguna memasukkan teks (nama)
    String? nama = stdin.readLineSync()!; // Membaca inputan nama (bisa null tapi harus tidak boleh null)

  int? umur; //Variable umur (bisa null)
  while (umur == null) { //akan loop selama input an null
    stdout.write("Masukkan umur: "); //Pengguna memasukkan teks
    umur = int.tryParse(stdin.readLineSync()!); //Membaca inputan teks (selama bukan angka akan dijadikan null)
    if (umur == null) { //Jika umur null
      stdout.write("Tolong untuk memasukkan angka"); //Akan di print
    }
  }

  stdout.write("Masukkan nama teman anda: "); // Pengguna memasukkan teks (nama teman)
    String? tnama = stdin.readLineSync()!; // Membaca inputan nama teman

  int? tumur; //Variable umur (bisa null)
  while (tumur == null) { //akan loop selama input an null
    stdout.write("Masukkan umur teman anda: "); //Pengguna memasukkan teks
    tumur = int.tryParse(stdin.readLineSync()!); //Membaca inputan teks (selama bukan angka akan dijadikan null)
    if (tumur == null) { //Jika umur null
      stdout.write("Tolong untuk memasukkan angka"); //Akan di print
    }
  }

    String tambahnama = nama + " " + tnama; //Menambahkan nama dan nama teman
    int tambahumur = umur + tumur; //Menambahkan umur dan umur teman

    stdout.write("Nama : $tambahnama \nUmur : $tambahumur"); //Hasilnya
}
