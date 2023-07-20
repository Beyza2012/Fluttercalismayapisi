import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Sayfa3.dart';
import 'kisiler.dart';

class Sayfa2 extends StatefulWidget {

  Kisiler kisi;

  Sayfa2({required this.kisi});

  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                //Back Satckten silerek geçiş yapma
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Satfa3()));
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Satfa3()));
              });

            },
                child: Text("Sayfa 3'e git")),
            Text("İsim: ${widget.kisi.isim}"),
            Text("Yaş: ${widget.kisi.yas}"),
            Text("Boy: ${widget.kisi.boy}"),
            Text("Bekar Mı: ${widget.kisi.bekarMi}"),


          ],
        ),
      ),

    );
  }
}
