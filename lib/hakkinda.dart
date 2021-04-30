import 'package:flutter/material.dart';

class hakkinda extends StatefulWidget {
  @override
  _hakkindaState createState() => _hakkindaState();
}

class _hakkindaState extends State<hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hakkinda'),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Bu uygulama Dr. Öğretim Üyesi  Ahmet Cevahir Çınar tarafından  yürütülen 3301456 kodlu Mobil uygulama dersi kapsamında 183311057 numaralı öğrenci Furkan Kozan tarafından 30 Nisan 2021 günü yapılmıştır",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold,fontSize: 15.0),),
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
