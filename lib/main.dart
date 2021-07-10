import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerornek/SayacModel.dart';
import 'package:providerornek/ikinciSayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    Bu tanımlamayı MyApp içerisinde yapmamızın sebebi tğm uygulamayı kapsıyor olmasından kaynaklı.
     */

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SayacModel(),
        ),
      ],
      child: MaterialApp(
        debugShowMaterialGrid: false,
        title: "Flutter demo",
        debugShowCheckedModeBanner: false,
        home: Anasayfa(),
      ),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SayacModel>(
              builder: (context, sayacmodelnesne, child) {
                return Text(
                  "${sayacmodelnesne.SayacOku()}",
                  style: TextStyle(fontSize: 36),
                );
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IkinciSayfa(),
                  ),
                );
              },
              child: Text("Geçiş Yap"),
            )
          ],
        ),
      ),
    );
  }
}
