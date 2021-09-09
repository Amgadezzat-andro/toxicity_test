import 'package:flutter/cupertino.dart';
import 'package:toxicity_test/screens/structures.dart';

class SearchScreenProvider extends ChangeNotifier {
  var _defualtSearchValue = Center(
      child: Text(
    'Search result',
    style: TextStyle(fontSize: 22),
  ));
  List<Widget> searchBody = [
    Center(
        child: Text(
      'Search result',
      style: TextStyle(fontSize: 22),
    )),
  ];
  void addSearchResult(Map<dynamic, dynamic> map) {
    print('in');
    if (map.isEmpty) {
      searchBody.clear();
      print('d');
      searchBody.add(_defualtSearchValue);

      notifyListeners();
    } else {
      searchBody.clear();
      print('dd');
      print(map[0]);
      searchBody.add(StructureAttribScreen(
        drugName: map[0]['drugName'],
        imgUrl: map[0]['structure_diagram'],
      ));
      notifyListeners();
    }
  }
}
