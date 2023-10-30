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

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //   bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: _tabIndex,
      //     selectedItemColor: Colors.red,
      //     unselectedItemColor: Colors.black,
      //     showUnselectedLabels: true,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.history),
      //         label: 'History',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.analytics,
      //         ),
      //         label: 'Pay',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.payment),
      //         label: 'Payment',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Profile',
      //       ),
      //     ],
      //     onTap: (index) {
      //       if (index > 1) return;
      //       setState(() => _tabIndex = index);
      //     },
      //   ),
      // ),

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
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(children: [
                  Icon(Icons.add_card_outlined),
                  Text("TopUp"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.money),
                  Text("Send Money"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("Ticket Code"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("See All"),
                ]),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(children: [
                  Icon(Icons.add_card_outlined),
                  Text("Pulsa"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.money),
                  Text("Electricity"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("BPJS"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("mgames"),
                ]),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(children: [
                  Icon(Icons.add_card_outlined),
                  Text("Internet"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.money),
                  Text("PDAM"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("Kartu Elektronik"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("More"),
                ]),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(children: [
                  Icon(Icons.add_card_outlined),
                  Text("TopUp"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.money),
                  Text("Send Money"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("Ticket Code"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Icon(Icons.airplane_ticket_outlined),
                  Text("See All"),
                ]),
              ),
            ],
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            enlargeFactor: 0.2,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Color(0xffff8f4f - i * 100),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: const Text(''),
                );
              },
            );
          }).toList(),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
