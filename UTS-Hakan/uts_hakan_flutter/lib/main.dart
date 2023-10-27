import 'package:flutter/material.dart'; //tes

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.only(top: 20.0, right:  20.0),
                  width: 120,
                  child: Image(
                    image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToIhy4KyY-ALuwCR9Z3_zCTW--fU_3agJjOItWx2hLBA&s'),
                    width: 36,
                    height: 36,
                    fit: BoxFit.scaleDown,),
                ),
                SizedBox(width: 10),
                Icon(Icons.airplane_ticket, size: 36,),
                SizedBox(width: 10),
                Icon(Icons.heart_broken, size: 36,),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child : DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Text('Decoration Box'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}
