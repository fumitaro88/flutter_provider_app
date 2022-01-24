import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String titleText = 'Titleです';

  void changeText(){
    titleText = 'おはようございます！！！';
    notifyListeners();
  }
}