import 'package:flutter/material.dart';
import 'package:flutter_hackathon_21_emi_moon/components/drawers.dart';
import 'package:flutter_hackathon_21_emi_moon/constants.dart';
import 'package:flutter_hackathon_21_emi_moon/english_module/word_bank.dart';
import 'screens/main_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

WordBank wordBank = WordBank();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kBackGroundColor,
          title: Image.asset(
               'images/appBar.png',
                height:70,
                width: 500,
            ),
        ),
        drawer: LeftDrawer(),
        endDrawer: RightDrawer(),
        body: MainPage(),
      ),
    );
  }
}

