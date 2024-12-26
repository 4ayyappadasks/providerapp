import 'package:flutter/cupertino.dart';

class BottomnavController extends ChangeNotifier
{
  // int _tabindex = 1;
  //
  // int get tabindex => _tabindex;
  //
  // set changetab (int index){
  //   _tabindex = index;
  //   notifyListeners();
  // }

  int pageindex = 0;
  changepage (int index){
    if(index>=0&&index<5)
      {
        pageindex = index;
        notifyListeners();
      }
    else
      {
        print("index exceeds the limit : $index");
      }
  }
}