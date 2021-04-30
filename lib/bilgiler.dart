import 'package:anket/hakkinda.dart';
import 'package:flutter/material.dart';

class bilgiler extends StatefulWidget {
  String AdSoyad = '';
  bilgiler({this.AdSoyad}) ;
  @override
  _bilgilerState createState() => _bilgilerState();
}

class _bilgilerState extends State<bilgiler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Kullanıcı Bilgileri'),
    ),
    body: Center(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Sayın : "+widget.AdSoyad+ " ankete katıldığınız için \n teşekkürler ",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold,fontSize: 15.0),),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.00001),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => hakkinda()),
            );
          },
          child: Text('Hakkında'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Anasayfaya Dön'),
        ),
      ),
    ]
    )
    )
    )
    );
  }
}
