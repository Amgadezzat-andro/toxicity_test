import 'package:flutter/cupertino.dart';

class Durg {
  var _infos = <Map<dynamic, dynamic>>[
    {
      'drugName': 'Alchol',
      'structure_diagram': AssetImage('assets/img/alcholstr.png')
    },
    {
      'drugName': 'Methanol',
      'structure_diagram': AssetImage('assets/img/methanolstr.png')
    },
    {
      'drugName': 'Sulfuric acid',
      'structure_diagram': AssetImage('assets/img/h2so4.png')
    }
  ];
  List<Map>? getDrugInfo() => _infos;
  List<String> getDrugsName(String st) => _infos
      .where((element) {
        String drglaw =
            element['drugName'].toString().toUpperCase().toLowerCase();
        String elm = st.toUpperCase().toLowerCase();
        return drglaw.contains(elm);
      })
      .map((e) => e['drugName'].toString())
      .toList();
  ImageProvider getDrugImage(String drugName) {
    var x = _infos
        .map((e) => e['drugName'] == drugName ? e['structure_diagram'] : null)
        .toList()
        .takeWhile((value) => value != null);

    return x.first;
  }
}
