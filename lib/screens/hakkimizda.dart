import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter_hackathon_21_emi_moon/constants.dart';

class HakkimizdaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kScreenPagesAppBar,
      backgroundColor: kBackGroundColor,
      body: ListView.separated(
        padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemCount: hakkimizdaList.length,
        itemBuilder: (context, i) {
          return ExpandablePanel(
            header: Text(
              hakkimizdaListHeader[i],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: kGreenTextColor,
              ),
            ),
            collapsed: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: kPurpleColor,
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 5),
                  ),
                ),
                Text(
                  hakkimizdaList[i],
                  style: TextStyle(fontSize: 20),
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            expanded: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Container(
                  color: kPurpleColor,
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 5),
                  ),
                ),
                Text(
                  hakkimizdaList[i],
                  style: TextStyle(fontSize: 20),
                  softWrap: true,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}