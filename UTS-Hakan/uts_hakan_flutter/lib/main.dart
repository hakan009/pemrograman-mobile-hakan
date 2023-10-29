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
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(right: 20.0),
                child: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToIhy4KyY-ALuwCR9Z3_zCTW--fU_3agJjOItWx2hLBA&s'),
                  width: 36,
                  height: 36,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 36, // Set the height of the Icon
                    child: Icon(
                      Icons.airplane_ticket,
                      size: 36,
                    ),
                  ),
                  Container(
                    width: 36, // Set the width of the Icon
                    height: 36, // Set the height of the Icon
                    child: Icon(
                      Icons.heart_broken,
                      size: 36,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.red, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Hakan Alif Pramudya',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      padding: EdgeInsets.all(10.0),
                      width: 150,
                      height: 75,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Balance',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Rp. 10.000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold, 
                                ),
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                  padding: EdgeInsets.all(10.0),
                  width: 150,
                  height: 75,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bonus Balance',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold, 
                            ),
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ],
                  ),
                )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
