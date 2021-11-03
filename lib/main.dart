import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BugunNeYesemApp());
}

class BugunNeYesemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'BUGÜN NE YESEM ?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}
class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo=1, tatliNo=1, yemekNo=1;
  List<String> corbaAdlari=['Mercimek', 'Tarhana', 'Tavuksuyu', 'Düğün', 'Yoğurt'];
  void RandomYemekGetir(){
    setState(() {
      corbaNo=Random().nextInt(5)+1;
      tatliNo=Random().nextInt(5)+1;
      yemekNo=Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.asset('assets/images/corba_$corbaNo.jpg'),
                  onPressed: RandomYemekGetir,
                ),
              )),
          Text(
            '${corbaAdlari[corbaNo-1]} Çorbası',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.asset('assets/images/tatli_$tatliNo.jpg'),
                  onPressed: RandomYemekGetir,
                ),
              )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.asset('assets/images/yemek_$yemekNo.jpg'),
                  onPressed: RandomYemekGetir,
                ),
              )),
        ],
      ),
    );
  }
}


