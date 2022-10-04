import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final mekanFoto = <String>[
    "assets/Rectangle 11.png",
    "assets/Rectangle 11 (1).png",
    "assets/Rectangle 11 (2).png",
  ];
  final yildiz = <String>[
    "assets/Stars.png",
    "assets/Stars (1).png",
    "assets/Stars (1).png",
  ];
  final mekanAdi = <String>[
    "Universal Studio",
    "Disneyland",
    "Six Flags",
  ];
  final adres = <String>[
    "Universal city,Cal",
    "Orlando,Flo",
    "San Antonio,Tx",
  ];
  final sehirFoto = <String>[
    "assets/Rectangle 19.png",
    "assets/Rectangle 14.png",
    "assets/Rectangle 14 (1).png"
  ];
  final sehirAdi = [
    "London",
    "New York",
    "Tokyo",
  ];

  String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/menu.png',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'assets/bildirim.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome,Lee',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Let’s find a place for you',
                  style: TextStyle(fontSize: 15, color: Color(0xff6B6B6B)),
                )
              ],
            ),
            Container(
              height: 50,
              width: 350,
              margin: EdgeInsets.only(top: 30),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffD9D9D9).withOpacity(0.4),
                    filled: true,
                    contentPadding: EdgeInsets.all(5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: 'United States',
                    hintStyle: TextStyle(
                        color: Color(0xff000000).withOpacity(0.3),
                        fontSize: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff000000).withOpacity(0.3),
                    ),
                    suffixIcon: ImageIcon(AssetImage('assets/options.png'))),
                onChanged: ((value) {
                  print(value);
                  setState(() {
                    email = value;
                  });
                  
                }),
              ),
            ),
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotels',
                    style: TextStyle(color: Color(0xff6B6B6B), fontSize: 15),
                  ),
                  Text(
                    'Attraction ',
                    style: TextStyle(color: Color(0xff4682B4), fontSize: 15),
                  ),
                  Text(
                    'Sights',
                    style: TextStyle(color: Color(0xff6B6B6B), fontSize: 15),
                  ),
                  Text(
                    'Recomanded',
                    style: TextStyle(color: Color(0xff6B6B6B), fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 260,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 163,
                    height: 260,
                    margin: EdgeInsets.only(right: 10, top: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFAF9F6).withOpacity(0.2),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1))),
                    child: Column(
                      children: [
                        Image.asset(mekanFoto[index]),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(yildiz[index]),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                mekanAdi[index],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/pin.png'),
                                  Text(
                                    adres[index],
                                    style: TextStyle(color: Color(0xff6B6B6B)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(r" $ 109",
                                      style: TextStyle(
                                          color: Color(0xff4682B4),
                                          fontSize: 12)),
                                  Text(
                                    "/Day",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff6B6B6B)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Destination',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'See all',
                  style: TextStyle(fontSize: 15, color: Color(0xff4682B4)),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 160,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 141,
                    height: 137,
                    margin: EdgeInsets.only(right: 10, top: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFAF9F6).withOpacity(0.2),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Image.asset(
                          sehirFoto[index],
                          width: 129,
                          height: 95,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          sehirAdi[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/heart.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/user.png')),
            label: '',
          ),
        ],
      ),
    );
  }
}
