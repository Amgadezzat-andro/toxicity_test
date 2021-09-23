import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Toxtree modules (0/15)',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuildContainer(
                'Cramer rules',
              ),
              BuildContainer(
                'Extended Cramer rules',
              ),
              BuildContainer(
                'Revised Cramer Decision Tree',
              ),
              BuildContainer(
                'Varhaar scheme for predicting toxicity mode of action',
              ),
              BuildContainer(
                'Varhaar scheme (modified) for predicting toxicity mode of action',
              ),
              BuildContainer(
                'Eye irritation',
              ),
              BuildContainer(
                'Skin irritatoin',
              ),
              BuildContainer(
                'Structure Alerts for the in vivo micronucleus assay in rodents',
              ),
              BuildContainer(
                'Skin sensitisation alerts (M. Cronin)',
              ),
              BuildContainer(
                'DNA binding',
              ),
              BuildContainer(
                'Protein binding',
              ),
              BuildContainer(
                'Michael acceptors',
              ),
              BuildContainer(
                'Begin/Bossa rules for carcinogenicity and mutagenicity',
              ),
              BuildContainer(
                'In vitro mutagenicity (Ames test) alerts by ISS',
              ),
              BuildContainer(
                'ILSI/Kroes decision tree for TTC',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class BuildContainer extends StatefulWidget {
  BuildContainer(this.title);
  String title;
  @override
  State<StatefulWidget> createState() {
    return _BuildContainer();
  }
}

class _BuildContainer extends State<BuildContainer> {
  _BuildContainer();

  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blueGrey.shade900,
          ),
          margin: EdgeInsets.symmetric(vertical: 2),
          padding: EdgeInsets.fromLTRB(25, 20, 20, 20),
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .70,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      widget.title,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: Icon(
                  isOpen
                      ? FontAwesomeIcons.chevronUp
                      : FontAwesomeIcons.chevronDown,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        isOpen
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Some random data ',
                    style: TextStyle(fontSize: 27),
                  ),
                ),
              )
            : Text('')
      ],
    );
  }
}
