import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toxicity_test/providers/auth.dart';
import 'package:toxicity_test/providers/drop_down_container_provider.dart';
import 'package:toxicity_test/providers/search_screen_provider.dart';

import 'package:page_transition/page_transition.dart';
import 'package:toxicity_test/screens/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SearchScreenProvider>(
          create: (_) => SearchScreenProvider(),
        ),
        ChangeNotifierProvider<DropDownContainerProvider>(
          create: (_) => DropDownContainerProvider(),
        ),
        ChangeNotifierProvider.value(value: Auth()),
      ],
      child: MaterialApp(
        title: 'Toxicity Test',
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: "assets/img/logo.png",
      splashIconSize: double.infinity,
      nextScreen: StartScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      backgroundColor: Colors.grey[100],
    );
  }
}
