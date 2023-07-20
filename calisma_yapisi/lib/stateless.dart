import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Stateles sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Text("Merhaba"),
          ],
        ),
      ),

    );
  }

  
}