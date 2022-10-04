import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/startedScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({super.key});

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _colorTween;


    @override
    void dispose() {
      super.dispose();
      _animationController!.dispose();
    }

   @override
    void initState() {
      _animationController = AnimationController(
          vsync: this, duration: Duration(seconds: 2));
      _colorTween = ColorTween(begin: Colors.white, end: Color(0xff1ED760))
          .animate(_animationController!);
          _animationController!.forward();
  Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => startScreen(),
            ));
      },
    );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBuilder(
        animation: _colorTween!,
        builder: (context, child) =>Center(child: SvgPicture.asset("assets/logo.svg",color: _colorTween!.value,)),
      ),
    );
  }
}
