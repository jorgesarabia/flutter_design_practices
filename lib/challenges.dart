import 'package:flutter/material.dart';

class Challenge {
  const Challenge({
    @required this.color,
    @required this.title,
    @required this.detail,
    @required this.url,
  });

  final String title;
  final String detail;
  final String url;
  final Color color;
}

List<Challenge> get challengeList {
  String _lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ';
  _lorem += 'sed eiusmod tempor incidunt ut labore et dolore magna aliqua.';
  _lorem += 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ';
  _lorem += 'ut aliquid ex ea commodi consequat. Quis aute iure reprehenderit in voluptate ';
  _lorem += 'velit esse cillum dolore eu fugiat nulla pariatur.';

  return <Challenge>[
    Challenge(
      color: Colors.blue,
      title: 'Desafio ',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.red,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.green,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.orange,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.black,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.blue,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.yellow,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.blueGrey,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.blue,
      title: 'Desafio ',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.red,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.green,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.orange,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.black,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.blue,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.yellow,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
    Challenge(
      color: Colors.blueGrey,
      title: 'Desafio',
      detail: _lorem,
      url: 'https://www.google.com',
    ),
  ];
}
