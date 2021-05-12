import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimatedBtnScroll extends StatefulWidget {
  @override
  _AnimatedBtnScrollState createState() => _AnimatedBtnScrollState();
}

class _AnimatedBtnScrollState extends State<AnimatedBtnScroll> {
  final scrollController = ScrollController();
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10.0),
                    Icon(Icons.search),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Search'),
                      ),
                    ),
                    Icon(Icons.more_vert),
                    const SizedBox(width: 10.0),
                  ],
                ),
              ),
            ),
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  _onScrollDirection();
                  return true;
                },
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return _Item(
                      color: Colors.primaries[index % Colors.primaries.length],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _FabButton(
        expanded: expanded,
      ),
    );
  }

  void _onScrollDirection() {
    final direction = scrollController.position.userScrollDirection;

    print(direction);

    if (direction == ScrollDirection.reverse && expanded) {
      setState(() {
        expanded = false;
      });
    } else if (direction == ScrollDirection.forward && !expanded) {
      setState(() {
        expanded = true;
      });
    }
  }
}

class _FabButton extends StatelessWidget {
  const _FabButton({
    this.expanded = false,
  });

  final bool expanded;

  final _minSize = 50.0;
  final _maxSize = 150.0;
  final _iconSize = 24.0;

  @override
  Widget build(BuildContext context) {
    final position = (_minSize - _iconSize) / 2;

    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      width: expanded ? _maxSize : _minSize,
      height: _minSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_minSize),
        color: Colors.blue,
      ),
      child: Stack(
        children: [
          Positioned(
            top: position,
            left: position,
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: position + _iconSize * 1.5,
            top: position,
            child: Text(
              'Start chat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Icon(Icons.person),
      ),
      title: Text('Title'),
      subtitle: Text('This is the subtitle'),
      trailing: Text('Trailing'),
    );
  }
}
