import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //runApp(const MainApp());
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  TextEditingController _suhuCelciusController = TextEditingController();
  String _suhuKelvin = "";
  String _suhuReamur = "";
  //const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return const MaterialApp(
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  //Hint Text
                  hintText: 'Enter temperature in Celcius',
                ),
                controller: _suhuCelciusController,
                // Validasi
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                //Inputan angka
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          //child: Text('Hello World!'),
        ),
      ),
    );
  }
}
