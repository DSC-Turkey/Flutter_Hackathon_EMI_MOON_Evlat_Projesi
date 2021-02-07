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
            child: Text('EĞİTİM', style: kMainPageButtonTextStyle),
          ),
          Container(
            height: 12,
            width: 400,
            color: kPurpleColor,
            child: Text(
              '',
              style: TextStyle(fontSize: 5),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OyunlarPage()),
              );
            },
            child: Text('OYUNLAR', style: kMainPageButtonTextStyle),
          ),
          Container(
            height: 12,
            width: 300,
            color: kPurpleColor,
            child: Text(
              '',
              style: TextStyle(fontSize: 5),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HakkimizdaPage()),
              );
            },
            child: Text('HAKKIMIZDA', style: kMainPageButtonTextStyle),
          ),
          Container(
            height: 12,
            width: 200,
            color: kPurpleColor,
            child: Text(
              '',
              style: TextStyle(fontSize: 5),
            ),
          ),
          SizedBox(
            height: 70,
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
