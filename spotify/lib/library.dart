import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class libraryPage extends StatefulWidget {
  const libraryPage({super.key});

  @override
  State<libraryPage> createState() => _libraryPageState();
}

class _libraryPageState extends State<libraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,backgroundColor: Colors.black ,items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.white ,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined, color: Colors.white ,),label: ''),
        BottomNavigationBarItem(icon: Image.asset("assets/kitaplik.png", color: Colors.green,),label: ''),
      ]
      ),

      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              Row(
                
                children: [
                  Text(
                      'Your Library',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 110,),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 40,),
                    ImageIcon(AssetImage("assets/user.png"), color: Color(0xFFFFFFFF), size: 30,),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40,right: 25),
                            width: 163,
                            height: 181,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset("assets/grup1.png")),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Playlists #1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40,right: 13),
                            width: 163,
                            height: 181,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset("assets/grup2.png")),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Playlists #2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                                ),
                              ],
                            ),
                          ),
                        ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20,right: 25,),
                            width: 163,
                            height: 181,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset("assets/grup3.png")),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Playlists #3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20,right: 13),
                            width: 163,
                            height: 181,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset("assets/grup4.png")),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Playlists #4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                                ),
                              ],
                              
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 12,),
                 
                 Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text('See all', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)), 
                 
                 ],
                ),
              ),
                SizedBox(height: 20,),
                Text('Your Activities', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                Column(
                      children: [
                        Bounceable(
                          onTap: () {  },
                          child: Container(
                            width: 343,
                            height: 55,
                            child: Row(
                              children: [
                                ImageIcon(AssetImage('assets/kalp.png'), color: Colors.white, size: 32,),
                                SizedBox(width: 40,),
                                Text('Liked Songs', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                                SizedBox(width: 130,),
                                ImageIcon(AssetImage('assets/sagOk.png'), color: Colors.white, size: 32,),
                        
                              ],
                            ),
                          ),
                        ),
                         Bounceable(
                           onTap: () {  },
                           child: Container(
                            width: 343,
                            height: 55,
                            child: Row(
                              children: [
                                ImageIcon(AssetImage('assets/aile.png'), color: Colors.white, size: 32,),
                                SizedBox(width: 40,),
                                Text('Followed Artist', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                                SizedBox(width: 107,),
                                ImageIcon(AssetImage('assets/sagOk.png'), color: Colors.white, size: 32,),
                         
                              ],
                            ),
                                               ),
                         ),
                         Bounceable(
                           onTap: () {  },
                           child: Container(
                            width: 343,
                            height: 55,
                            child: Row(
                              children: [
                                ImageIcon(AssetImage('assets/mic.png'), color: Colors.white, size: 32,),
                                SizedBox(width: 40,),
                                Text('Followed Podcast', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                                SizedBox(width: 86,),
                                ImageIcon(AssetImage('assets/sagOk.png'), color: Colors.white, size: 32,),
                         
                              ],
                            ),
                                               ),
                         ),
                      ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
