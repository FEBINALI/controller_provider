import 'package:flutter/material.dart';
import 'package:provideapp/model/modelclass.dart';

class listdatacontroller extends ChangeNotifier {
  List<modelDetail> details = [];

  List<modelDetail> get listsdetails => details;

  set addimglist(modelDetail detail) {
    details.add(detail);

    notifyListeners();
  }

  set deletinglistO(int i) {
    details.removeAt(i);

    notifyListeners();
  }
}
