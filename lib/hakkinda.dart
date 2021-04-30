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
                      Text("\n Bu uygulama \n Selçuk üniversite öğrencisi \n 183311057 numaralı Furkan Kozan \n tarafından yapılmıştır, \n uygulamada toplamda 9 adet soru bulunmaktadır \n uygulamayı kullandığınız için teşekkürler ",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold,fontSize: 15.0),),
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
