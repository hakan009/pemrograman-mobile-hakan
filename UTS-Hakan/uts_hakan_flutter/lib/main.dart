import 'package:flutter/material.dart'; //tes
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts_hakan_flutter/screens/history.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

//Image
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
          ),
        ))
    .toList();

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Listview ben isok discroll
      body: ListView(
        children: [
          Column(children: [
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
              height: 140,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Hi, Hakan Alif Pramudya',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
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
                          padding: EdgeInsets.all(15.0),
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
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15),),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(
                        Icons.add_card_outlined,
                        size: 25,
                      ),
                      Text("TopUp"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(
                        Icons.money,
                        size: 25,
                      ),
                      Text(
                        "Send Money",
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("Ticket Code"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("See All"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("Pulsa"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("Electricity"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("BPJS"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("mgames"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("Internet"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("PDAM"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("Kartu Elektronik",textAlign: TextAlign.center,),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("More"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.add_card_outlined),
                      Text("TopUp"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.money),
                      Text("Send Money"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("Ticket Code"),
                    ]),
                  ),
                  Container(
                    width: 80,
                    child: Column(children: [
                      Icon(Icons.airplane_ticket_outlined),
                      Text("See All"),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 100.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enlargeFactor: 0.2,
                ),
                items: imageSliders,
              ),
            ),
          ]),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Icon(Icons.qr_code_2_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            NavIcon(
              iconData: Icons.home_outlined,
              name: "Home",
              onTap: () {},
            ),
            NavIcon(
              iconData: Icons.history,
              name: "History",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => History(),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            NavIcon(
              iconData: Icons.inbox_outlined,
              name: "Inbox",
            ),
            NavIcon(
              iconData: Icons.account_circle_outlined,
              name: "Account",
            ),
          ],
        ),
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  final IconData iconData;
  final String name;
  final void Function()? onTap;

  const NavIcon({
    super.key,
    required this.iconData,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: Colors.grey,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
