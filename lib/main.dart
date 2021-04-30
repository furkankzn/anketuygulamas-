
import 'package:anket/bilgiler.dart';
import 'package:anket/hakkinda.dart';
import 'package:anket/soru1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: TextField(),
    );
  }
}

class TextField extends StatefulWidget {
  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  final _kontrolcu = TextEditingController();

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Selçuk Üni. Memnuniyet Anketi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '        Selçuk Üniversitesi\nöğrenci memnuniyet anketi\n\n',
              style: TextStyle(fontSize: 30.0 ,fontWeight: FontWeight.bold) ,
            ),
            Text(
              'Adınız ve soyadınız',
              style: TextStyle(fontSize: 18.0) ,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _kontrolcu,
                decoration: const InputDecoration(
                  hintText: 'Adınızı ve Soyadınızı giriniz',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => soru1(AdSoyad: _kontrolcu.text)),
                  );
                },
                child: Text('Ankete başla'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.00001),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey, onPrimary: Colors.white,textStyle: TextStyle( fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bilgiler(AdSoyad: _kontrolcu.text)),
                  );
                },
                child: Text('Kullanıcı bilgileri'),
              ),
            ),
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
            )
          ],
        ),
      ),
    );
  }
}

