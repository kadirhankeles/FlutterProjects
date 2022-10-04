import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class playlist extends StatefulWidget {
  const playlist({super.key});

  @override
  State<playlist> createState() => _playlistState();
}

class _playlistState extends State<playlist> {
  final resimListesi = <String> [
    "assets/hitgrup1.png",
    "assets/hitgrup2.png",
    "assets/hitgrup3.png",
    "assets/hitgrup4.png",
  ];
  final sarkiAdi = <String> [
    "STAY",
    "Wishing Well",
    "First Class",
    "Unstable",
  ];
  final sanatciAdi = <String> [
    "The Kid LAROI,Justin Bieber",
    "Juice WLRD",
    "Jack Harlow",
    "Justin Bieber,The Kid LAROI",
  ];
  final kalp  = <bool> [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.centerRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 378,
                  width: double.infinity,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/kapak.png'),fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Image.asset('assets/solOk.png'),
                          SizedBox(width: 260,),
                          Image.asset('assets/heart.png'),
                          SizedBox(width: 30,),
                          Icon(Icons.more_vert,color: Colors.white,)
                        ],
                      ),
                      SizedBox(height: 190,),
                      Container(
                        width: double.infinity,
                        height: 18,
      
                        alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 45),
                        decoration: BoxDecoration(image: DecorationImage(alignment: Alignment.topLeft,image: AssetImage('assets/todays.png'),fit: BoxFit.fitHeight)),
                      ),
                     Container(
                        width: double.infinity,
                        height: 55,
      
                        alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 45,top: 10),
                        decoration: BoxDecoration(image: DecorationImage(alignment: Alignment.topLeft,image: AssetImage('assets/tophits.png'))),
                      ),

                      Row(children: [
                        SizedBox(width: 40,),
                        Image.asset('assets/solukKalp.png'),
                        SizedBox(width: 3,),
                        Image.asset('assets/like.png'),
                        SizedBox(width: 40,),
                        Image.asset('assets/solukSaat.png'),
                        SizedBox(width: 3,),
                        Image.asset('assets/saat.png'),
                      ],)
                    ],
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(left: 16, top: 20),
                   child: Text('Featuring', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                 ),
                Padding(
                  
                  padding: const EdgeInsets.only(left: 16, right: 10),
                  child: Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                      height: 100,
                      width: 390,
                      child: Row(children: [
                        Container(
                          
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(resimListesi[index]),alignment: Alignment.centerLeft)),
                        ),
                          Container(
                            height: 80,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30,),
                                Text(sarkiAdi[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white ),),
                                Text(sanatciAdi[index], style: TextStyle( fontSize: 12, color: Colors.white ),),
                              ],
                            ),
                          ),
                        GestureDetector(
                          onTap: () {
                            if (kalp[index] == true) {
                              setState(() {
                                kalp[index] = false;

                              });
                            }else {
                              setState(() {
                                kalp[index] = true;
                              });
                            }
                          },
                          child: kalp[index]? Container(
                              height: 80,
                              width: 50,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/yesilKalp.png'),alignment: Alignment.centerLeft)),
                          ):Container(
                            height: 80,
                              width: 50,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/heart.png'),alignment: Alignment.centerLeft)),
                          ),
                        ),Container(
                            height: 80,
                            width: 20,
                            child: Icon(Icons.more_vert,color: Colors.white,),
                        ),
                        
                        
                        
                      ],),
                    ),
                          ],
                        );
                      },
                    ),
                    
                    
      
                  ),
                ),
              ],
            ),
            Positioned(child: Container(margin: EdgeInsets.only(bottom: 80,right: 20),child: Image.asset('assets/playtusu.png'),),)
          ],
        ),
      ),
    );
  }
}