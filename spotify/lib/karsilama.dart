import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class SpotifyKarsilama extends StatefulWidget {
  const SpotifyKarsilama({super.key});

  @override
  State<SpotifyKarsilama> createState() => _SpotifyKarsilamaState();
  
}

class _SpotifyKarsilamaState extends State<SpotifyKarsilama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search', style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.w600),),
                Icon(Icons.more_vert_rounded, color: Colors.white, size: 28,),
              ],),
              Row(
                children: [
                   Flexible(
                        
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(top: 20,bottom: 10),
                          height:45,
                          child: TextField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade900,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              ),
                              hintText: 'Artist, songs or podcasts',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13
                              ),
                              prefixIcon: Container(
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white, size: 16,),),                          
                                
                              )
                            ),
                          ),
                        ),
                      ),
                  
                ],
              ),
             
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            
                            Bounceable(
                              onTap: () {
                                
                              },
                              child: Container(
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(right: 20, left: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) , 
                              child: Center(child: Text('The Kid LAROI', style: TextStyle(color: Colors.white,  ),)),
                            )),
                           Bounceable(
                            onTap: () {
                              
                            },
                            child: Container(  
                              height: 40,
                              padding: EdgeInsets.only(right: 20, left: 20),
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) ,
                              child: Center(child: Text('Drake', style: TextStyle(color: Colors.white,  ),)),
                            )),
                            Bounceable(
                              onTap: () {
                                
                              },
                              child: Container(
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(right: 20, left: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) ,
                              child: Center(child: Text('Justin Bieber', style: TextStyle(color: Colors.white,  ),)),
                            )),
                            Bounceable(
                              onTap: () {
                                
                              },
                              child: Container(
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(right: 20, left: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) ,
                              child: Center(child: Text('Joji', style: TextStyle(color: Colors.white,  ),)),
                            )),
                            Bounceable(
                              onTap: () {
                                
                              },
                              child: Container(
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(right: 20, left: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) , 
                              child: Center(child: Text('Azer Bülbül', style: TextStyle(color: Colors.white,  ),)),
                            )),
                            Bounceable(
                              onTap: () {
                                
                              },
                              child: Container(
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(right: 20, left: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) , 
                              child: Center(child: Text('Ciguli', style: TextStyle(color: Colors.white,  ),)),
                            )),
                            Bounceable(
                              onTap: () {
                                
                              },
                              child: Container(
                              height: 40,
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.only(right: 20, left: 20),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) , 
                              child: Center(child: Text('Vahit Guetta', style: TextStyle(color: Colors.white,  ),)),
                            )),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Bounceable(
                            onTap: () {
                              
                            },
                            child: Container(
                            height: 40,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(right: 30, left: 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) , 
                            child: Center(child: Text('Hip Hop', style: TextStyle(color: Colors.white,  ),)),
                          )),
                           Bounceable(
                            onTap: () {
                              
                            },
                            child: Container(
                            height: 40,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(right: 30, left: 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) , 
                            child: Center(child: Text('Pop', style: TextStyle(color: Colors.white,  ),)),
                          )),
                           Bounceable(
                            onTap: () {
                              
                            },
                            child: Container(
                            height: 40,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(right: 30, left: 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,) , 
                            child: Center(child: Text('Top-Hits', style: TextStyle(color: Colors.white,  ),)),
                          )),
                        ],
                      ),
                      Container(
                        child: Text("Podcast's", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, ), ),
                        margin: EdgeInsets.only(top: 20,bottom: 12),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Bounceable( onTap: () {
                              
                            },
                              child: Container(
                                width: 155, 
                                height: 195,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,),
                                margin: EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.network('https://is3-ssl.mzstatic.com/image/thumb/Music/v4/3c/ae/98/3cae98f4-6cfb-438a-ccb5-9ff7e5f55ad9/cover.jpg/1200x1200bf-60.jpg',)),
                                     width: 113,
                                     height: 125,
                                     ),
                                    Container(child: Text('Gül Güzeli', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white,),),
                                    margin: EdgeInsets.only(right: 50),),
                                    Container(child: Text('334 ep.', style: TextStyle(fontSize: 11, color: Colors.white),),
                                    margin: EdgeInsets.only(right: 75),)
                                  ],
                                ),
                              ),
                            ),
                             Bounceable(onTap: () {
                               
                             },
                               child: Container(
                                width: 155, 
                                height: 195,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,),
                                margin: EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.network('https://lastfm.freetls.fastly.net/i/u/500s/cc5f1b43a761e733a886340e7968381b.jpg',)),
                                     width: 113,
                                     height: 125,
                                     ),
                                    Container(child: Text('Karanlık', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white,),),
                                    margin: EdgeInsets.only(right: 50),),
                                    Container(child: Text('400 ep.', style: TextStyle(fontSize: 11, color: Colors.white),),
                                    margin: EdgeInsets.only(right: 65),)
                                  ],
                                ),
                                                     ),
                             ),
        
                             Bounceable( onTap: () {
                               
                             },
                               child: Container(
                                width: 155, 
                                height: 195,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,),
                                margin: EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.network('https://is3-ssl.mzstatic.com/image/thumb/Music/v4/3c/ae/98/3cae98f4-6cfb-438a-ccb5-9ff7e5f55ad9/cover.jpg/1200x1200bf-60.jpg',)),
                                     width: 113,
                                     height: 125,
                                     ),
                                    Container(child: Text('Gül Güzeli', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white,),),
                                    margin: EdgeInsets.only(right: 50),),
                                    Container(child: Text('334 ep.', style: TextStyle(fontSize: 11, color: Colors.white),),
                                    margin: EdgeInsets.only(right: 75),)
                                  ],
                                ),  
                                                     ),
                             ),
        
                            Bounceable(onTap: () {
                              
                            },
                              child: Container(
                                width: 155, 
                                height: 195,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900,),
                                margin: EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.network('https://i.pinimg.com/originals/58/2b/0b/582b0b7ed7f2ac81126103a7901c3015.jpg',)),
                                     width: 113,
                                     height: 125,
                                     ),
                                    Container(child: Text('Acının İlacı', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white,),),
                                    margin: EdgeInsets.only(right: 40),),
                                    Container(child: Text('334 ep.', style: TextStyle(fontSize: 11, color: Colors.white),),
                                    margin: EdgeInsets.only(right: 75),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                Container(
                        child: Text("Browse all", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, ), ),
                        margin: EdgeInsets.only(top: 10,bottom: 12),
                      ),
                    ],
                    
                  ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Bounceable(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 90,
                            width: 162,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.only(top: 20, left: 10),
                            decoration: BoxDecoration(color: Colors.grey.shade900, borderRadius: BorderRadius.circular(10), gradient: LinearGradient(begin: Alignment.topLeft, stops: [0,1], colors: [Color(0xffE02FCF),Color(0xff00C188)])),
                            child: Text('Made For You', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Bounceable(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 90,
                            width: 162,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.only(top: 20, left: 10),
                            decoration: BoxDecoration(color: Colors.grey.shade900, borderRadius: BorderRadius.circular(10), gradient: LinearGradient(begin: Alignment.topLeft, stops: [0,1], colors: [Color(0xff0A3CEC),Color(0xff4DD4AC)])),
                            child: Text('Charts', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Bounceable(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 90,
                            width: 162,
                            padding: EdgeInsets.only(top: 20, left: 10),
                            decoration: BoxDecoration(color: Colors.grey.shade900, borderRadius: BorderRadius.circular(10), gradient: LinearGradient(begin: Alignment.topLeft, stops: [0,1], colors: [Color(0xff0A3CEC),Color(0xffD9DD01)])),
                            child: Text('Discover', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Bounceable(onTap: () {
                          
                        },
                          child: Container(
                            height: 90,
                            width: 162,
                            padding: EdgeInsets.only(top: 20, left: 10),
                            decoration: BoxDecoration(color: Colors.grey.shade900, borderRadius: BorderRadius.circular(10), gradient: LinearGradient(begin: Alignment.topLeft, stops: [0,1], colors: [Color(0xff0E31AE),Color(0xffDD1010)])),
                            child: Text('New Relaese', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    )
                    
                  ],
                )
            ],
          ),
        ),
        
      ),
    );
  }
}