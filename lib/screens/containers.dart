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
              Padding(
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
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 5),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: Text(
                                    'intermediate (Class II)',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.green,
                                  child: Text(
                                    'Low (Class I)',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'High (Class III)',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q1.Normal constituent of the body',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q2.Contains functional groups \nassociated with enhanced toxicity',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q3.Contains elements other than \nC,H,O,N,divalent S ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q4.Elements not listed in Q3 \noccurs only as a Na,K,Ca,Mg,N salt\n,sulphamate,sulphonate,\nsulphate,hydrochloride ... ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        )
                      ],
                      textColor: Colors.white,
                      title: Text(
                        'Cramer Rules',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      collapsedIconColor: Colors.white,
                      backgroundColor: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
              ),
              Padding(
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
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 5),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: Text(
                                    'UNKNOWN',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.green,
                                  child: Text(
                                    'NOT corrosion R34, R35 or R41',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.green,
                                  child: Text(
                                    'NOT eye irritation R36',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'Moderate reversable irritation to the eye',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'Serious lesions to the eye',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'Skin corrosion',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q1.Melting Point[℃] > 200',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q2.LogP>9.0 ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q3.LogP<-3.1 ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q4.Lipid Solubility<0.01',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q5.Water Solubility<5.0E-6 ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        )
                      ],
                      textColor: Colors.white,
                      title: Text(
                        'Eye Irretation',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      collapsedIconColor: Colors.white,
                      backgroundColor: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
              ),
              Padding(
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
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 5),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: Text(
                                    'Alert for SN1 Identified.: NO',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: Text(
                                    'Alert for Schiff base formation  identified.: NO',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'Alert for Michael Acceptor identified.: YES',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'Alert for Acyl Transfer agent identified.: YES',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'QSN1.SN1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'QSB.Schiff Base Formation',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q3.MA.Michael Acceptor ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q4.1acyl.Acyl Transfer Agents',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q5.QSN2.SN2-Nucleophilic \nAliphatic Substitution',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Q6.At least one alert \nfor DNA binding?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        )
                      ],
                      textColor: Colors.white,
                      title: Text(
                        'DNA Binding',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      collapsedIconColor: Colors.white,
                      backgroundColor: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
              ),
              Padding(
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
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 5),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: Text(
                                    'Alert for SNAr Identified.: NO',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: Text(
                                    'Alert for Michael Acceptor identified.: NO',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.yellow,
                                  child: Text(
                                    'Alert for Schiff base formation  identified.: NO',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'Alert for SN2 identified.: YES',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'Alert for Acyl Transfer agent identified.: YES',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  alignment: Alignment.center,
                                  color: Colors.red,
                                  child: Text(
                                    'No protein binding alerts identified.: NO',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'QSNAR.SNAr-Nucleophilic \nAromatic Substitution',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'QSB.Schiff Base Formation ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'QMA.Michael Acceptor  ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'acyl.Acyl Transfer Agents',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'SN2.SN2-Nucleophilic\nAliphatic Substitution',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        )
                      ],
                      textColor: Colors.white,
                      title: Text(
                        'Protein Binding',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      collapsedIconColor: Colors.white,
                      backgroundColor: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
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
  BuildContainer(this.title, this.data);
  String title;
  String data;
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
                  '${widget.data}',
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
