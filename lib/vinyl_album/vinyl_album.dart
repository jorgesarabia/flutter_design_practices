import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_design_practices/constants.dart';

class VinylAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: _MyVinylAlbumHeader(),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '$lorem $lorem $lorem $lorem $lorem $lorem $lorem',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MyVinylAlbumHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = MediaQuery.of(context).size;
    // El shrinkOffset va desde 0 hasta maxExtent;
    final percent = shrinkOffset / maxExtent;

    final num currentImageSize = (160.0 * (1 - percent)).clamp(60.0, 160.0);
    final minMargin = size.width / 4;
    final leftMaxMargin = minMargin + (minMargin / 2 * percent);

    return Container(
      color: Color(0xFFECECEA),
      child: Stack(
        children: [
          Positioned(
            top: 50.0,
            left: leftMaxMargin,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nombre del artista',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: (25.0 * (1 - percent)).clamp(16.0, 25.0),
                    letterSpacing: -0.5,
                  ),
                ),
                Text(
                  'Nombre del album',
                  style: TextStyle(
                    fontSize: (18.0 * (1 - percent)).clamp(12.0, 18.0),
                    letterSpacing: -0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: (150.0 * (1 - percent)).clamp(35.0, 150.0),
            height: currentImageSize as double?,
            child: Transform.rotate(
              angle: 2 * pi * percent,
              child: Image.asset('assets/vinyl_album/vinyl.png'),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 35.0,
            height: currentImageSize as double?,
            child: Image.asset('assets/vinyl_album/album.jpg'),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 350.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}
