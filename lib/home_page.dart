import 'package:flutter/material.dart';

import 'package:ui_challenge_1/ui_challenge_1.dart';
import 'package:ui_challenge_2/ui_challenge_2.dart';
import 'package:ui_challenge_3/ui_challenge_3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => UiChallenge1()));
              },
              child: Text(
                "UI Challenge 1",
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => UiChallenge2()));
              },
              child: Text(
                "UI Challenge 2",
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => UiChallenge3()));
              },
              child: Text(
                "UI Challenge 3",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
