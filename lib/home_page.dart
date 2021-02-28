import 'package:flutter/material.dart';
import 'package:flutter4fun/models/UiChallenge.dart';
import 'package:flutter4fun/utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter4Fun.com'),
        actions: [
          FlatButton(
            child: Text(
              'Blog',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Utils.openUrl('https://www.flutter4fun.com');
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        itemBuilder: (context, pos) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: UiChallengePreviewWidget(allChallenges[pos]),
          );
        },
        itemCount: allChallenges.length,
      ),
    );
  }
}

class UiChallengePreviewWidget extends StatelessWidget {
  final UiChallengeModel uiChallenge;

  const UiChallengePreviewWidget(this.uiChallenge) : super();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(uiChallenge.localImage),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0.5,
                offset: Offset(1, 1))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Container(
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 18,
                top: 24,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.0),
                      ])),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    uiChallenge.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    uiChallenge.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
