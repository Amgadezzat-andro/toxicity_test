// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'containers.dart';

class StructureAttribScreen extends StatelessWidget {
  StructureAttribScreen({this.drugName, this.imgUrl});
  String drugName;
  AssetImage imgUrl;
  @override
  Widget build(BuildContext context) {
    var padHight = MediaQuery.of(context).size.height * .15;
    return Container(
      color: Colors.white,
      child: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            drugName=='C(=O)Cl'?
            Column(
              children: [
                Divider(color: Colors.black),
                Text(
                  'Available Structure Attribute :',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(color: Colors.black),
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 40, left: 3),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Table(
                            defaultColumnWidth: FixedColumnWidth(180.0),
                            border: TableBorder.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 2),
                            children: [
                              TableRow(
                                children: [
                                  Column(
                                    children: [
                                      Text('CasRN',
                                          style: TextStyle(fontSize: 18.0))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '68476-03-9',
                                        style: TextStyle(fontSize: 18.0),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'EC number',
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '270-664-6',
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Names',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Fatty acids, montan-wax|MONTAN ACID WAX',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'SMILESO',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'C(Cc1occc1)Cl',
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Std. InChI key',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'GUSVHTGHWCRLNP-UHFFFAOYSA-N',
                                        style: TextStyle(fontSize: 14.0),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Std. InChIInChI',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '1S/C6H5ClO2/c7-6(8)4-5-2-1-3-9-5/h1-3H,4H2',
                                        style: TextStyle(fontSize: 14.0),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ):Container(),
            Divider(
              color: Colors.black,
            ),
            Text(
              '$drugName Structure diagram :',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Image(
                  height: MediaQuery.of(context).size.height * .25,
                  image: imgUrl),
            ),
            SizedBox(
              height: padHight,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Toxicity modules',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => BuildList()));
                    },
                    icon: Container(
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black45),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
