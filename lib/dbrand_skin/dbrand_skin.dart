import 'package:flutter/cupertino.dart';

class DBrandSkin {
  const DBrandSkin({
    this.image,
    this.color,
    this.name,
    this.center,
  });

  final String name;
  final String image;
  final int color;
  final Alignment center;
}

final skins = <DBrandSkin>[
  DBrandSkin(
    name: "Sunset Red",
    color: 0xFFd9654e,
    image: 'assets/dbrand_skin/red.jpg',
    center: Alignment.topLeft,
  ),
  DBrandSkin(
    name: "Sunrise Orange",
    color: 0xFFed7e47,
    image: 'assets/dbrand_skin/orange.jpg',
    center: Alignment.topCenter,
  ),
  DBrandSkin(
    name: "Mellow Yellow",
    color: 0xFFfabf5a,
    image: 'assets/dbrand_skin/yellow.jpg',
    center: Alignment.topRight,
  ),
  DBrandSkin(
    name: "Seafoam Green",
    color: 0xFF75e6a2,
    image: 'assets/dbrand_skin/green.jpg',
    center: Alignment.centerLeft,
  ),
  DBrandSkin(
    name: "Sky Blue",
    color: 0xFF7fe0eb,
    image: 'assets/dbrand_skin/blue.jpg',
    center: Alignment.centerRight,
  ),
  DBrandSkin(
    name: "Kind Of Purple",
    color: 0xFF9388bd,
    image: 'assets/dbrand_skin/purple.jpg',
    center: Alignment.bottomLeft,
  ),
  DBrandSkin(
    name: "Off Pink",
    color: 0xFFd99a9d,
    image: 'assets/dbrand_skin/pink.jpg',
    center: Alignment.bottomCenter,
  ),
  DBrandSkin(
    name: "Pastel Black",
    color: 0xFFc2c2c2,
    image: 'assets/dbrand_skin/gray.jpg',
    center: Alignment.bottomRight,
  ),
];
