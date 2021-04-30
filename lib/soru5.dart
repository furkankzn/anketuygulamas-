import 'package:anket/soru6.dart';
import 'package:flutter/material.dart';


class soru5 extends StatefulWidget {
  String AdSoyad = '';
  String cevap1 = '';
  String cevap2 = '';
  String cevap3 = '';
  String cevap4 = '';
  soru5({this.AdSoyad,this.cevap1,this.cevap2,this.cevap3,this.cevap4}) ;
  @override
  _soru5State createState() => _soru5State();
}
class _soru5State extends State<soru5> {

  String mevcutcevap = "";
  String mevcutcevap5 = "";

  void cevapkaydet(String) {
    mevcutcevap5 = mevcutcevap;
  }
  void sonrakisoru() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => soru6(AdSoyad: widget.AdSoyad,cevap1: widget.cevap1,cevap2 :widget.cevap2,cevap3: widget.cevap3,cevap4: widget.cevap4,cevap5: mevcutcevap5)),
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
                'Mevcut Soru : ' + "5 \n" ,
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