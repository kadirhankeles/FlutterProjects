import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listenScreen extends StatefulWidget {
  const listenScreen({super.key});

  @override
  State<listenScreen> createState() => _listenScreenState();
}

class _listenScreenState extends State<listenScreen> {
  double _currentSliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/asagiOk.png',
                  color: Colors.white,
                ),
                Text(
                  "Today's Top Hits",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Image.asset('assets/listenkapak.png'),
            SizedBox(
              height: 10,
            ),
            Text(
              'First Class',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Jack Harlow',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.white),
            ),
            Stack(
              children: [
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(top: 30, left: 23),
                  child: Text(
                    '0.22',
                    style: TextStyle(color: Color(0xffB3B3B3), fontSize: 10),
                  ),
                )),
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(top: 30, left: 318),
                  child: Text(
                    '2.53',
                    style: TextStyle(color: Color(0xffB3B3B3), fontSize: 10),
                  ),
                )),
                SliderTheme(
                  data: SliderThemeData(
                    thumbColor: Colors.white,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                    activeTrackColor: Color(0xff1ED760),
                    inactiveTrackColor: Color(0xffD9D9D9),
                  ),
                  child: Slider(
                    value: _currentSliderValue,
                    onChanged: (val) {
                      _currentSliderValue = val;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            Container(
            height: 55,
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/karisikCal.png',color: Colors.white,),
                Image.asset('assets/basaSar.png',color: Colors.white,),
                Image.asset('assets/durdur.png',color: Color(0xff1ED760), fit: BoxFit.fill,),
                Image.asset('assets/sonaSar.png',color: Colors.white,),
                Image.asset('assets/yeniden.png',color: Colors.white,),
                
              ],
            ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/bt.png'),
                SizedBox(width: 15,),
                Text('Airpods Pro',style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold ),)
              ],
            )),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 55,
                width: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(90), color: Colors.white.withOpacity(0.09)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/heart.png',width: 26,),
                    Image.asset('assets/micr.png'),
                    Image.asset('assets/cihaz.png'),
                    Image.asset('assets/liste.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
