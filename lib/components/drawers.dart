import 'package:flutter_hackathon_21_emi_moon/screens/ingilizce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_21_emi_moon/constants.dart';
import 'package:flutter_hackathon_21_emi_moon/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kBackGroundColor,
        child: ListView.separated(
          itemCount: wordBank.wordDatasList.length,
          itemBuilder: (context, i) {
            if (i == 0) {
              return DrawerHeader(
                child: Column(
                  children: [
                    Text(
                      'İngilizce Kelime Ezberleme Modülü',
                      style: TextStyle(fontSize: 32),
                    ),
                  ],
                ),
              );
            } else {
              return ListTile(
                title: Center(
                  child: Text(
                    '${wordBank.wordDatasList[i - 1].wordEnglish} - ' +
                        wordBank.wordDatasList[i - 1].wordTurkish,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              );
            }
          },
          separatorBuilder: (context, index) {
            if (index == 0) {
              return FlatButton(onPressed: (){
 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IngilizcePage()),
              );
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Yabancı Dil Eğitimi',style: kMainPageButtonTextStyle.copyWith(fontSize: 20),),
                  Icon(Icons.arrow_forward_sharp,color: kGreenTextColor,)
                ],
              ));
            } else {
              return Divider();
            }
          },
        ),
      ),
    );
  }
}

class LeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kBackGroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Çocuklarınıza Her Gün Söylemeniz Gereken Cümleler',
                style: TextStyle(fontSize: 30,color: kPurpleColor),
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.heart,
                color: Colors.red,
              ),
              title: Text('Seni Seviyorum.'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.question,
                color: Colors.white,
              ),
              title: Text('Günün nasıl geçti?'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.thumbsUp,
                color: Colors.green,
              ),
              title: Text('Teşekkür ederim.'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.thumbsUp,
                color: Colors.green,
              ),
              title: Text('Bir Şey Değil.'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.handHoldingHeart,
                  color: Colors.redAccent),
              title: Text('Seninle Gurur Duyuyorum.'),
            ),
            ListTile(
              leading: Icon(
                Icons.clean_hands_outlined,
                color: Colors.blue,
                size: 28,
              ),
              title: Text('Ellerini Yıkamayı Unutma.'),
            ),
            ListTile(
              leading: Icon(
                Icons.record_voice_over_outlined,
                size: 28,
              ),
              title: Text('Kendini Tehlike Altında Hissedersen Bağır.'),
            ),
          ],
        ),
      ),
    );
  }
}
