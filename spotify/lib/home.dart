import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final baslangicKodu = <Color>[
    Color(0xffE02FCF),
    Color(0xff0A3CEC),
    Color(0xff4DD4AC)
  ];
  final bitisKodu = <Color>[
    Color(0xff00C188),
    Color(0xffDD1010),
    Color(0xffD9DD01)
  ];
  final yazilar = <String>[
    "Your\nDiscover\nWeekly",
    "Your\nDiscover\nDaily",
    "Top\nHits"
  ];
  final altYazi = <String>[
    "30 Fresh music for you every week",
    "New songs every day",
    "Top hits music for you",
  ];
  final sanatciListesi = <String> [
    "assets/sanatci1.png",
    "assets/sanatci2.png",
    "assets/sanatci3.png"
  ];
  final sanatciYazi = <String> [
    "Hip Hop Mix",
    "Moody Mix",
    "House Mix",
  ];
  final sanatciYazi2 = <String>[
    "Juice Wrld, Drake, Kendrick lamar and more... ",
    "Joji, The Kid LAROI, Tate McRae and more...",
    "Martin Garrix, The Chainsmoker and more...",
  ];
  final profilListesi = <String> [
    "assets/profil1.png",
    "assets/profil2.png",
    "assets/profil3.png",
  ];
  final profilYazi = <String> [
    "The Kid LAROI",
    "Taylor Swift",
    "Post Malone",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,backgroundColor: Colors.black ,items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.green ,),label: '', ),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined, color: Colors.white ,),label: ''),
        BottomNavigationBarItem(icon: Image.asset("assets/kitaplik.png"),label: ''),
      ]
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/simsek.png"),
                    color: Color(0xff1ED760),
                    size: 24,
                  ),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    'Weekly',
                    style: TextStyle(
                        color: Color(0xff1ED760),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Padding(padding: EdgeInsets.only(left: 3)),
                  Text(
                    'Music',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
              Container(
                height: 160,
                //color: Colors.amber,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 113,
                          width: 220,
                          margin: EdgeInsets.only(left: 25, top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  stops: [0, 1],
                                  colors: [baslangicKodu[index], bitisKodu[index]])),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 10,
                                  width: 20,
                                ),
                                Text(
                                  yazilar[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(altYazi[index], style: TextStyle(color: Color(0xffDADADA), fontSize: 11), textAlign: TextAlign.center,)
                        
                      ],
                    );
                  },
                ),
              ),
            SizedBox(height: 20,),
            Text('Your Top Mixes', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Container(
              height: 210,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 195,
                    width: 155,
                    margin: EdgeInsets.only(right: 20, top: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset(sanatciListesi[index])),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(sanatciYazi[index], style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 5,right: 3),
                          child: Text(sanatciYazi2[index], style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40,),
            Text('Suggested artists', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
            Container(
              height: 210,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 195,
                    width: 155,
                    margin: EdgeInsets.only(right: 20, top: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset(profilListesi[index])),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(profilYazi[index], style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
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
      ),
    );
  }
}
