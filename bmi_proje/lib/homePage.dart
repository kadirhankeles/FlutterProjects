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
                 inputFormatters: <TextInputFormatter>[
                 FilteringTextInputFormatter.digitsOnly,
                 LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Age",
                ),
                onChanged: (value) {
                  setState(() {
                    if (value.isNotEmpty){yas = int.parse(value);}
                    
                  });
                },
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
                onChanged: (value) {
                 
                  setState(() { boy = double.tryParse(value)??0;});
                },
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
                onChanged: (value) {
                  setState(() {
                    kilo = double.tryParse(value)??0;
                  });
                },
              ),
              SizedBox(
                height: 230,
              ),
              GestureDetector(
                onTap: () {
                  boy = boy / 100;
                  ortalama = kilo / (boy * boy);
                  //print("Vücut kitle indeksiniz: $ortalama");
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sonucEkrani() ));
                  if (yas == 0 || boy == 0 || kilo == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Değerleri boş bırakmayınız"),
                    ));
                  }else{
                    if((yas > 0 && yas <= 120) && (boy > 50 && boy <= 220) && (kilo > 0  && kilo <= 300)){
                      Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (sonucContext) => sonucEkrani(
                              ortalama: ortalama,
                              yas: yas,
                              boy: boy,
                              kilo: kilo)));} else {
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
