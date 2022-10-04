import 'package:bmi_proje/sonucEkrani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  int yas = 0;
  double kilo = 0.0;
  double boy = 0.0;
  double ortalama = 0.0;
  TextEditingController _controllerage=TextEditingController();
  TextEditingController _controllerheight=TextEditingController();
  TextEditingController _controllerweight=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                'Lets calculate \nyour current BMI',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You can find out whether you are \n overweight, underweight or ideal weight',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _controllerage,
                 inputFormatters: <TextInputFormatter>[
                 FilteringTextInputFormatter.digitsOnly,
                 LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: "Age",
                ),
           
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                 inputFormatters: <TextInputFormatter>[
                 FilteringTextInputFormatter.digitsOnly,
                 LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration:
                    InputDecoration(labelText: "Height", suffixText: "CM"),
               controller: _controllerheight,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                inputFormatters: <TextInputFormatter>[
                 FilteringTextInputFormatter.digitsOnly,
                 LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Weight", suffixText: "KG"),
               controller: _controllerweight,
              ),
              SizedBox(
                height: 230,
              ),
              GestureDetector(
                onTap: () {


                  print(_controllerage.text.isEmpty);                  
                  //print("Vücut kitle indeksiniz: $ortalama");
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sonucEkrani() ));
                  if (_controllerage.text.isEmpty || _controllerheight.text.isEmpty || _controllerweight.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Değerleri boş bırakmayınız"),
                    ));
                  }else{
                     yas=int.parse(_controllerage.text);
                      kilo=double.parse(_controllerweight.text);
                      boy=double.parse(_controllerheight.text);
                    if((yas > 0 && yas <= 120) && (boy > 50 && boy <= 220) && (kilo > 0  && kilo <= 300)){ 
                     
                      boy = boy / 100;
                  ortalama = kilo / (boy * boy);
                      Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (sonucContext) => sonucEkrani(
                              ortalama: ortalama,
                              yas: yas,
                              boy: boy,
                              kilo: kilo)));} 
                              else {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Girilen değerleri kontrol ediniz"),
                    ));
                              }
                    }
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF468EF8)),
                  child: Center(
                      child: Text(
                    'Calculate BMI',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
