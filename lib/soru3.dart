import 'package:flutter/material.dart';
import 'package:anket/soru4.dart';

class soru3 extends StatefulWidget {
  String AdSoyad = '';
  String cevap1 = '';
  String cevap2 = '';
  soru3({this.AdSoyad,this.cevap1,this.cevap2}) ;
  @override
  _soru3State createState() => _soru3State();
}
class _soru3State extends State<soru3> {

  String mevcutcevap = "";
  String mevcutcevap3 = "";

  void cevapkaydet(String) {
    mevcutcevap3 = mevcutcevap;
  }
  void sonrakisoru() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => soru4(AdSoyad: widget.AdSoyad,cevap1: widget.cevap1,cevap2 :widget.cevap2,cevap3:mevcutcevap3)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Selçuk Üni. Memnuniyet Anketi'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '',
                style: TextStyle(fontSize: 30.0) ,
              ),
              Text(
                'Mevcut Soru : ' + "3 \n" ,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Ders planları hedefleri açıktır',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,

              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = "Kesinlikle Katılıyorum";
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Kesinlikle Katılıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Katılıyorum';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Katılıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Kararsızım';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Kararsızım',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Katılmıyorum';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Katılmıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        mevcutcevap = 'Kesinlikle Katılmıyorum';
                        cevapkaydet(mevcutcevap);
                      });
                      sonrakisoru();
                    },
                    child: Text(
                      'Kesinlikle Katılmıyorum',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
              ),
            ]
        ),
      ),
    );
  }
  }
