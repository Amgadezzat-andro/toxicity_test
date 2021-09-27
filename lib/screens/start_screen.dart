import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toxicity_test/providers/auth.dart';
import 'package:toxicity_test/screens/login.dart';
import 'package:toxicity_test/screens/search_screen.dart';
import 'package:toxicity_test/widgets/app_drawer.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<Auth>(
          builder: (ctx, auth, _) {
            return auth.isAuth
                ? start(context)
                : FutureBuilder(
                    future: auth.tryAutoLogin(),
                    builder: (ctx, AsyncSnapshot authSnapShot) =>
                        authSnapShot.connectionState == ConnectionState.waiting
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : LoginScreen(),
                  );
          },
        ),
      ),
    );
  }
}

Scaffold start(context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black45,
    ),
    drawer: AppDrawer(),
    body: Center(
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
