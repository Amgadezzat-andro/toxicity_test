import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toxicity_test/screens/structures.dart';

class BuildList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
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
                'Eye irritation',
              ),
              BuildContainer(
                'DNA binding',
              ),
              BuildContainer(
                'Protein binding',
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.blueGrey.shade900,
          child: ExpansionTile(
            iconColor: Colors.amber,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 5),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.vial,
                      color: Colors.amber,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 5),
                child: Text(
                  'Some random data',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
            textColor: Colors.white,
            title: Text(
              '${widget.title}',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            collapsedIconColor: Colors.white,
            backgroundColor: Colors.blueGrey.shade900,
          ),
        ),
      ),
    );
  }
}
