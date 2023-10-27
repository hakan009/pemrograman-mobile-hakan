import 'package:list_dart_hakan/list_dart_hakan.dart' as list_dart_hakan;
import 'dart:io';

void main(List<String> arguments) {
    var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';

    print(gifts);
    print(nobleGases);

    mhs1['nama'] = 'Hakan Alif Pramudya';
    mhs1['nim'] = '2141720218';

    mhs2[66] = 'Hakan Alif Pramudya';
    mhs2[13] = '2141720218';

    gifts['third'] = 'Hakan Alif Pramudya';
    gifts['fourth'] = '2141720218';
    
    nobleGases[4] = 'Hakan Alif Pramudya';
    nobleGases[5] = '2141720218';

    print('mhs1 = $mhs1');
    print('mhs2 = $mhs2');
    print('gifts = $gifts');
    print('nobleGases = $nobleGases');
}
