import 'package:flutter/material.dart';
import 'package:qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter - QR Code',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final String data = '61d520ccb74288c96bc1a2b20ea1c0d5a704776dd0164a396efec3ea7040349d';                    //First, identify machine on the internet Then, search contents in web browser Finally, get user's previous transaction output

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    home: Scaffold(
      appBar: new AppBar(
        title: new Text("Qr Code"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text("Transaction ID with text:\n $data",         //Begin with symbol followed by letters, numbers and few other digits 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 16,),

            QrImage(                                         
              data: data,
              version: QrVersions.auto,
              gapless: true,
              size: 200,
              errorCorrectionLevel: QrErrorCorrectLevel.H,      //Check the value as a result of the computation
              ),
            ],
          ),
        ),
      ),
    );
  }
}