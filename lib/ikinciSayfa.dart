import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerornek/SayacModel.dart';

class IkinciSayfa extends StatelessWidget {
  /*
  Consumer dinleme ve tetikleme işlemi yapar.
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Dinle(),
            Bosluk(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Arttir(),
                Azalt(),
              ],
            ),
            Bosluk(),
            Floatbutton(context),
          ],
        ),
      ),
    );
  }

  Container Bosluk() {
    return Container(
      height: 20,
    );
  }

  FloatingActionButton Floatbutton(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.pop(context, true);
      },
      icon: Icon(Icons.arrow_back),
      label: Text("Geri"),
    );
  }

  Consumer<SayacModel> Azalt() {
    return Consumer<SayacModel>(
      builder: (context, sayacmodelnesne, child) {
        return RaisedButton(
          onPressed: () {
            sayacmodelnesne.SayacAzalt(2);
          },
          child: Text("Sayaç Azalt"),
        );
      },
    );
  }

  Consumer<SayacModel> Arttir() {
    return Consumer<SayacModel>(
      builder: (context, sayacmodelnesne, child) {
        return RaisedButton(
          onPressed: () {
            sayacmodelnesne.SayacArttir();
          },
          child: Text("Sayac Arttır."),
        );
      },
    );
  }

  Consumer<SayacModel> Dinle() {
    return Consumer<SayacModel>(
      builder: (context, sayacmodelnesne, child) {
        return Text(
          "${sayacmodelnesne.SayacOku()}",
          style: TextStyle(fontSize: 36),
        );
      },
    );
  }
}
