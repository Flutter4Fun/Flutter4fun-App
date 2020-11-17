import 'package:flutter/material.dart';

import 'package:ui_challenge_1/ui_challenge_1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(builder: (context) => UiChallenge1()));
        }, child: Text("UI Challenge 1")),
      ),
    );
  }
}
