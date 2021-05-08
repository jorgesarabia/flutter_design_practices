import 'package:flutter/material.dart';
import 'package:flutter_design_practices/constants.dart';
import 'package:flutter_design_practices/vinyl_album/vinyl_album.dart';

class Challenge {
  const Challenge({
    @required this.color,
    @required this.title,
    @required this.detail,
    @required this.url,
    @required this.page,
  });

  final String title;
  final String detail;
  final String url;
  final Color color;
  final Widget page;
}

List<Challenge> get challengeList {
  return <Challenge>[
    Challenge(
      color: Colors.blue,
      title: 'Desafio ',
      detail: lorem,
      url: 'https://www.google.com',
      page: VinylAlbum(),
    ),
  ];
}
