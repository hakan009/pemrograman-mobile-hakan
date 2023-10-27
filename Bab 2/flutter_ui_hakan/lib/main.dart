import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return /*const*/ MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('App Hakans'),),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Berita Terbaru'),
                  width: 120,
                ),
                SizedBox(width: 25),
                Container(
                  padding: const EdgeInsets.all(16.0), //Space inbetween container
                  child: Text('Pertandingan Terbaru'),
                  width: 170,
                ),
                
              ]
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(50),
                  alignment: Alignment.center,
                  child: 
                    Image(
                      image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      width: 250, 
                      height: 200,
                      fit: BoxFit.cover,
                      
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: Text('Pertandingan Terbaru'),
                ),
              ],
            )
          ]
          //child: Text('Hello World!'),
        ),
      ),
    );
  }
}
