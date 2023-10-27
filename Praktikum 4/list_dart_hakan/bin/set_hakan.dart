import 'package:list_dart_hakan/list_dart_hakan.dart' as list_dart_hakan;
import 'dart:io';

void main(List<String> arguments) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);

  //Menggunakan .add
  names1.add('Hakan Alif Pramudya');
  names1.add('2141720218');

  //Menggunakan .addAll
  names2.addAll(['Hakan Alif Pramudya', '2141720218']);

  print(names1);
  print(names2);

  //map
  //names3.add('test');
}
