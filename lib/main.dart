import 'package:flutter/material.dart';
import 'package:flutter_design_practices/challenges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => __HomePageState();
}

class __HomePageState extends State<_HomePage> {
  final _scrollController = ScrollController();

  final _cardSize = 150.0;

  void _listenScroll() {
    setState(() {});
  }

  @override
  void initState() {
    _scrollController.addListener(_listenScroll);

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design practices'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              title: Text(''),
              backgroundColor: Colors.transparent,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final challenge = challengeList[index];

                  final itemPositionOffset = (_cardSize / 2) * index;
                  final difference = _scrollController.offset - itemPositionOffset;
                  final percent = 1 - (difference / (_cardSize / 2));
                  double opacity = percent;
                  double scale = percent;
                  if (opacity > 1.0) opacity = 1.0;
                  if (opacity < 0.0) opacity = 0.0;
                  if (scale > 1.0) scale = 1.0;

                  return Align(
                    heightFactor: 0.5,
                    child: SizedBox(
                      height: _cardSize,
                      child: Opacity(
                        opacity: opacity,
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..scale(scale, 1.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return challenge.page;
                                }),
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              color: challenge.color,
                              child: Column(
                                children: [
                                  Text(
                                    challenge.title,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    challenge.detail,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: challengeList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
