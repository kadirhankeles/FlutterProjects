import 'package:bmi_proje/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sonucEkrani extends StatefulWidget {
  double ortalama;
  int yas;
  double boy;
  double kilo;
  sonucEkrani({super.key, this.ortalama=0, this.yas=0, this.boy=0, this.kilo=0});

  @override
  State<sonucEkrani> createState() => _sonucEkraniState();
}

class _sonucEkraniState extends State<sonucEkrani> {
  String sonucYazisi(ortalama){
    if(ortalama < 18.50){
      return "Underweight";
    }else if (ortalama >= 18.5 && ortalama < 24.9){
      return "Healthy Weight";
    }else if (ortalama >= 25.0 && ortalama < 29.9){
      return "Overweight";
    }else{return "Obesity";}  
  }
  Color yaziRengi(ortalama){
    if(ortalama < 18.50){
      return Colors.blue;
    }else if (ortalama >= 18.5 && ortalama < 24.9){
      return Colors.green;
    }else if (ortalama >= 25.0 && ortalama < 29.9){
      return Colors.orange;
    }else{return Colors.red;} 
  }
  String yasGrubu(yas){
    if(yas <= 19){
      return "0-19";
    }else if(yas >= 20 && yas <=25){
      return "20-25";
    }else if(yas >= 26 && yas <=29){
      return "26-29";
    }else if(yas >= 30 && yas <=34){
      return "30-34";
    }else if(yas >= 35 && yas <=39){
      return "35-39";
    }else if(yas >= 40 && yas <=44){
      return "40-44";
    }else {return "45+";}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 18),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.2)), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Your BMI is", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
                  Text("${widget.ortalama.toStringAsFixed(2)}", style: TextStyle(color: yaziRengi(widget.ortalama), fontSize: 60, fontWeight: FontWeight.bold),),
                  Text("This value is in the ${sonucYazisi(widget.ortalama)} \n  of ${yasGrubu(widget.yas)} for your age group."),
                ],
              ),
            ),
            SizedBox(height: 170,),
            GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> homePage()));
                widget.yas=0;
                widget.ortalama=0;
                widget.kilo=0;
                widget.boy=0;
                Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (homeContext)=> homePage()), (Route<dynamic> route)=> false);
              },
              child: Container(width: double.infinity,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFF468EF8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.refresh_outlined, color: Colors.white,),
                  Text('Start over', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}