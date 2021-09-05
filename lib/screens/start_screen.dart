import 'package:flutter/material.dart';
import 'package:toxicity_test/screens/search_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              fit: BoxFit.contain,
              image: AssetImage('assets/img/logo.png'),
              width: MediaQuery.of(context).size.width * .45,
              height: 230,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => SearchScreen(
                      title: 'Exact Structure Searching',
                    ),
                  ),
                );
              },
              child: Text(
                'Exact structure',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade300,
                fixedSize: Size(MediaQuery.of(context).size.width * .65, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => SearchScreen(
                        title: 'Similarty Searching',
                      ),
                    ),
                  );
                },
                child: Text(
                  'Similarty',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade300,
                  fixedSize: Size(MediaQuery.of(context).size.width * .65, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => SearchScreen(
                      title: 'Substructure Searching',
                    ),
                  ),
                );
              },
              child: Text(
                'Substructure',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade300,
                fixedSize: Size(MediaQuery.of(context).size.width * .65, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
