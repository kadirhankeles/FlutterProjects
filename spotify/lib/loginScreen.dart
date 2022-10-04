import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: Image.asset('assets/yuvarlak.png'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset('assets/logo.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'MIllions of songs, free on spotify',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 445,
                    width: 342,
                    //padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Login Account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        SizedBox(height: 40,),
                        SizedBox(
                          width: 260,
                          height:35,
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xff1ED760), width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xff1ED760), width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              labelText: 'Email or Username',
                              isDense: true, // Added this
                             contentPadding: EdgeInsets.only(left: 15),
                              // Added this
                              suffixIcon: const Icon(
                                
                                Icons.mail_outline,
                                color: Color(0xff1ED760),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 260,
                          height:35,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xffDADADA), width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xff1ED760), width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              labelText: 'Password',
                              isDense: true, // Added this
                             contentPadding: EdgeInsets.only(left: 15),
                              // Added this
                              suffixIcon: const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color(0xffDADADA),
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          //SizedBox(width: 40,),
                          Text('Remember me', style: TextStyle(color: Color(0xffDADADA)),),
                          Image.asset('assets/isaret.png'),
                        ],),
                        Bounceable(
                          onTap: () {
                            
                          },
                          child: Container(height: 40,
                          width: 260,
                          margin: EdgeInsets.only(top: 30),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Color(0xff1ED760), borderRadius: BorderRadius.circular(30)),
                          child: Text('LOG IN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Image.asset('assets/ayrac.png'),
                        SizedBox(height: 10,),
                        Image.asset('assets/sosyallogo.png'),
                        SizedBox(height: 20,),
                        Bounceable(onTap: () {
                          
                        },child: Text('Forget Password?', style: TextStyle(color: Color(0xffDADADA), fontSize: 14),)),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Don’t have an account?', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),),
                      Text('Sign up now', style: TextStyle(color: Color(0xff1ED760), fontSize: 14, fontWeight: FontWeight.w600),),
                      
                    ],
                  )
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
