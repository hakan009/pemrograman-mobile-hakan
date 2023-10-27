import 'package:list_dart_hakan/list_dart_hakan.dart' as list_dart_hakan;
import 'dart:io';

void main(List<String> arguments) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  tukar((record.b, record.a));

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ('Hakan Alif Pramudya', 2141720218);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2141720218, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, bool) tukar((bool, int) record) {
  var (a, b) = record;
  return (b, a);
}