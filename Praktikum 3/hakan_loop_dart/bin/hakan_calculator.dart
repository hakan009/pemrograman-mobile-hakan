//import 'package:hakan_ifelse/hakan_loop_dart.dart' as hakan_loop_dart;
import 'dart:io';

void main() {
  print("Masukkan bilangan ke 1:");
  double angka1 = double.parse(stdin.readLineSync()!);

  print("Masukkan bilangan ke 2:");
  double angka2 = double.parse(stdin.readLineSync()!);

  print("Masukkan Operasi (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  double hasil;

  switch (operation) {
    case '+':
      hasil = angka1 + angka2;
      break;
    case '-':
      hasil = angka1 - angka2;
      break;
    case '*':
      hasil = angka1 * angka2;
      break;
    case '/':
      hasil = angka1 / angka2;
      break;
    default:
      print("Tidak ada operasi itu");
      return;
  }
    print("Hasil: $hasil");
}
