import 'package:flutter/material.dart';
import 'package:flutter_design_practices/animated_btn_scroll/animated_btn_scroll.dart';
import 'package:flutter_design_practices/checkboxes/checkboxes.dart';
import 'package:flutter_design_practices/constants.dart';
import 'package:flutter_design_practices/dbrand_skin/dbrand_skin_selection.dart';
import 'package:flutter_design_practices/vinyl_album/vinyl_album.dart';

class Challenge {
  const Challenge({
    required this.color,
    required this.title,
    required this.detail,
    required this.url,
    required this.page,
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
      title: 'Album de vinilo',
      detail: lorem,
      url: 'https://www.google.com',
      page: VinylAlbum(),
    ),
    Challenge(
      color: Colors.red,
      title: 'D brand skin',
      detail: lorem,
      url: 'https://dbrand.com/shop/special-edition/pastels',
      page: DBrandSkinSelection(),
    ),
    Challenge(
      color: Colors.green,
      title: 'Animated button scroll',
      detail: lorem,
      url: '',
      page: AnimatedBtnScroll(),
    ),
    Challenge(
      color: Colors.orange,
      title: 'Checkboxes',
      detail: lorem,
      url: '',
      page: Checkboxes(),
    ),
  ];
}
