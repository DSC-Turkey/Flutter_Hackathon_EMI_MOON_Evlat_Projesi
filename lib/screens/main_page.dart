import 'package:flutter/material.dart';
import 'package:flutter_hackathon_21_emi_moon/constants.dart';
import 'egitim.dart';
import 'oyunlar.dart';
import 'hakkimizda.dart';
import 'doga.page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/main_page_background.png'),
            fit: BoxFit.cover),
      ),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 320,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EgitimPage()),
              );
            },
            child: Text(
              'EĞİTİM',
              style: kMainPageButtonTextStyle
            ),
          ),
          SizedBox(
            height: 7,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OyunlarPage()),
              );
            },
            child: Text(
              'OYUNLAR',
              style: kMainPageButtonTextStyle
            ),
          ),
          SizedBox(
            height: 7,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HakkimizdaPage()),
              );
            },
            child: Text(
              'HAKKIMIZDA',
              style: kMainPageButtonTextStyle
            ),
          ),
          SizedBox(
            height: 80,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DogaPage()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DOĞA',
                  style: kMainPageButtonTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
