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
            Divider(
              color: Colors.black,
            ),
            Text(
              'Available structur attribute :',
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
              padding: const EdgeInsets.only(top: 2, bottom: 40, left: 3),
              child: RichText(
                  text: TextSpan(
                      text:
                          'Some rich Text !! Pellentesque ac nisi bibendum sapien feugiat mattis eu et velit. Nunc est leo, sodales sed nisl sed, egestas blandit arcu. In id tristique purus. Nulla facilisi.',
                      style: TextStyle(color: Colors.black, fontSize: 18))),
            ),
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
                    'Toxtree modules',
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
