import 'package:list_dart_hakan/list_dart_hakan.dart' as list_dart_hakan;
import 'dart:io';

void main(List<String> arguments) {
  /*
    var list = [1, 2, 3];
    assert(list.length == 3);
    assert(list[1] == 2);
    print(list.length);
    print(list[1]);

    list[1] = 1;
    assert(list[1] == 1);
    print(list[1]);
  */

    final List<Object?> prak1 = List<Object?>.generate(5, (index) => null);
    // Akses length dan null
    assert(prak1.length == 5);
    print("List Length: ${prak1.length}");
    print("Index 1: ${prak1[1]}");

    // Modifikasi
    prak1[1] = 2141720218;
    assert(prak1[1] == 2141720218);

    prak1[2] = "Hakan Alif P";
    assert(prak1[2] == "Hakan Alif P");

    print("Index 1 (1): ${prak1[1]}");
    print("Index 2 (1): ${prak1[2]}");
}
