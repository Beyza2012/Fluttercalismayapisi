import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/stateful.dart';
import 'package:calisma_yapisi/stateless.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
   int sayac=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(isim: "Ahmet", yas: 18, boy: 1.78, bekarMi: true);
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Sayfa2(kisi:kisi)));
            });

            },
                child: Text("Sayfa 2'ye git")),

          ],
        ),
      ),

    );
  }
}
