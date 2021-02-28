import 'package:flutter/cupertino.dart';

class UiChallengeModel {
  final String routeName;
  final String title;
  final String name;
  final String url;
  final String localImage;
  final String githubLink;
  final String youtubeLink;

  UiChallengeModel(
      this.routeName, this.title, this.name, this.url, this.localImage, this.githubLink, 
      this.youtubeLink
  );
}

List<UiChallengeModel> allChallenges = [
  UiChallengeModel(
    '/ui-challenge-4',
    'UI Challenge 4',
    'Electrons Counter App',
    'https://flutter4fun.com/ui-challenge-4',
    'assets/images/ui-challenge4.jpg',
    'https://github.com/imaNNeoFighT/UI-Challenge-4',
    null,
  ),
  UiChallengeModel(
    '/ui-challenge-3',
    'UI Challenge 3',
    'Game App UI By Tanmoy Roy',
    'https://flutter4fun.com/ui-challenge-3',
    'assets/images/ui-challenge3.jpg',
    'https://github.com/imaNNeoFighT/UI-Challenge-3',
    null,
  ),
  UiChallengeModel(
    '/ui-challenge-2',
    'UI Challenge 2',
    'Gaming App Design By Nevil Suresh',
    'https://flutter4fun.com/ui-challenge-2-game-app-design-by-nevil-suresh',
    'assets/images/ui-challenge2.jpg',
    'https://github.com/imaNNeoFighT/UI-Challenge-2',
    null,
  ),
  UiChallengeModel(
    '/ui-challenge-1',
    'UI Challenge 1',
    'Concert Design By Habib Nasiri',
    'https://flutter4fun.com/ui-challenge-1-concert-by-habib',
    'assets/images/ui-challenge1.jpg',
    'https://github.com/imaNNeoFighT/UI-Challenge-1',
    null,
  ),
];