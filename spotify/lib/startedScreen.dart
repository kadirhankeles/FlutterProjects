import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class startScreen extends StatefulWidget {
  const startScreen({super.key});

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Container(
        height: 844,
        width: 394,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/billie.png'),fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18),
          child: Column(
            children: [
              SizedBox(height: 600,),
              Text('Spotify ', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text(' A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.', style: TextStyle(color: Colors.white, fontSize: 15, letterSpacing: 1),),
              Bounceable(
                onTap: () {
                  
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 345,
                  height: 48,
                  decoration: BoxDecoration(color: Color(0xff1ED760), borderRadius: BorderRadius.circular(30)),
                  child: Center(child: Text('Get Started', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}