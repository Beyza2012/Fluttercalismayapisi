import 'package:calisma_yapisi/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Satfa3 extends StatefulWidget {

  @override
  State<Satfa3> createState() => _Satfa3State();
}

class _Satfa3State extends State<Satfa3> {
  Future<bool> geriDonusTusu(BuildContext context) async{
    print("Geri dönüş tuşu tıklandı");
    Navigator.of(context).popUntil((route) => route.isFirst);
    return true;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa 3"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            print("Appbar geri dönüş tuşu tıklandı");
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Anasayfa()));
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: ()=> geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
              Navigator.pop(context);
                });

              },
                  child: Text("Geldiği sayfaya dön")),
              ElevatedButton(onPressed: (){
                setState(() {
                Navigator.of(context).popUntil((route) => route.isFirst);
                });

              },
                  child: Text("Anasayfaya dön")),
              ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Anasayfa()));
                });

              },
                  child: Text("Anasayfaya geçiş yap")),

            ],
          ),
        ),
      ),

    );
  }
}
