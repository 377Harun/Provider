import 'package:flutter/material.dart';

class SayacModel extends ChangeNotifier {
  /*
  ChangeNotifier bize notifylisteners metodunu kullanmamızı sağlıyor.
  notifyListener değişen değeri sayfalara aktarıyor.
   */

  int sayac = 0;

  int SayacOku() {
    return sayac;
  }

  SayacArttir() {
    sayac = sayac + 1;
    notifyListeners();
  }

  void SayacAzalt(int miktar) {
    sayac = sayac - miktar;
    notifyListeners();
  }
}
