import 'package:flutter/material.dart';

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  final bannerFoto = <String>[
    "assets/banner 1.png",
    "assets/banner 2.png",
    "assets/banner 3.png",
  ];
  final kategoriFoto = <String>[
    "assets/Group 8.png",
    "assets/Group 8 (1).png",
    "assets/Group 8 (2).png",
    "assets/Group 8 (3).png",
    "assets/Group 8 (4).png",
  ];

  final kategoriYazi = <String>[
    "Apparel",
    "School",
    "Sports",
    "Electronic",
    "All",
  ];
  final urunFoto = <String>[
    "assets/img.png",
    "assets/img (1).png",
    "assets/img (2).png",
    "assets/img (3).png",
    "assets/img (4).png",
    "assets/img (5).png",
    "assets/img (6).png",
    "assets/img (7).png",
  ];
  final urunAdi = <String>[
    "Monitor LG 22”inc 4K...",
    "Aestechic Mug - white...",
    "Airpods pro",
    "Playstation 4 - SSD 128...",
    "Black T-shirt",
    "Macbook Pro - 8/128GB...",
    "Fujifilm Camera XA5",
    "Cream Hoodie for Girl"
  ];
  final urunFiyat = <String>[
    r"$199.99",
    r"$19.99",
    r"$499.99",
    r"$1999.99",
    r"$199.99",
    r"$19.99",
    r"$199.99",
    r"$19.99",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff67C4A7),
        unselectedItemColor: Color(0xff939393),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Home.png'),
              color: Color(0xff67C4A7),
              size: 28,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Heart.png'),
              color: Color(0xff939393),
              size: 28,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Paper.png'),
              color: Color(0xff939393),
              size: 28,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Profile.png'),
              color: Color(0xff939393),
              size: 28,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 20),
                width: 350,
                height: 28,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery address',
                          style:
                              TextStyle(color: Color(0xffC8C8CB), fontSize: 10),
                        ),
                        Row(
                          children: [
                            Text(
                              'Salatiga City, Central Java',
                              style: TextStyle(
                                  color: Color(0xff393F42),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 13,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Stack(
                      children: [
                        Container(
                            width: 28,
                            height: 28,
                            child: Image(image: AssetImage('assets/buy.png'))),
                        Container(
                            margin: EdgeInsets.only(
                              left: 17,
                            ),
                            child: Image(image: AssetImage('assets/iki.png')))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage('assets/bildirim.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Search here ...",
                    prefixIcon: Icon(Icons.search),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10),
                  ),
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                height: 144,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 144,
                      width: 304,
                      child: Image(image: AssetImage(bannerFoto[index])),
                    );
                  },
                ),
              ),
              Text(
                'Category',
                style: TextStyle(
                    color: Color(0xff393F42),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 70,
                child: ListView.builder(
                  itemCount: kategoriFoto.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70,
                      width: 60,
                      margin: EdgeInsets.only(right: 13),
                      child: Column(
                        children: [
                          Image(image: AssetImage(kategoriFoto[index])),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            kategoriYazi[index],
                            style: TextStyle(
                                color: Color(0xff939393), fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    'Recent product',
                    style: TextStyle(
                        color: Color(0xff393F42),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Image.asset('assets/Frame 8.png'),
                ],
              ),
              Container(
                width: double.infinity,
                height: 700,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: (1 / 1.3)),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 170,
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(urunFoto[index]),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              urunAdi[index],
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 10),
                            child: Text(
                              urunFiyat[index],
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 140,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff67C4A7),
                            ),
                            child: Center(
                                child: Text(
                              'Add to cart',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
