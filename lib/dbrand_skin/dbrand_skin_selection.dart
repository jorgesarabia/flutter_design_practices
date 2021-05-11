import 'package:flutter/material.dart';
import 'package:flutter_design_practices/dbrand_skin/dbrand_skin.dart';

class DBrandSkinSelection extends StatefulWidget {
  @override
  _DBrandSkinSelectionState createState() => _DBrandSkinSelectionState();
}

class _DBrandSkinSelectionState extends State<DBrandSkinSelection>
    with SingleTickerProviderStateMixin {
  DBrandSkin _current = skins.first;
  DBrandSkin _past = skins.first;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      upperBound: 2.5,
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }

  void _onSkinSelected(DBrandSkin skin) {
    setState(() {
      _current = skin;
    });
    _controller.forward(from: 0.0).whenComplete(() {
      setState(() {
        _past = _current;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DBrand Skin Selection')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    _past.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (_, __) {
                      return ClipPath(
                        clipper: _SkinClipper(
                          _controller.value,
                          _current,
                        ),
                        child: Image.asset(
                          _current.image,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  _current.name,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(20.0),
                    itemCount: skins.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 35.0,
                      mainAxisSpacing: 35.0,
                    ),
                    itemBuilder: (context, index) {
                      return _SkinButton(
                        skin: skins[index],
                        isSelected: _current.color == skins[index].color,
                        onTap: () {
                          _onSkinSelected(skins[index]);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SkinClipper extends CustomClipper<Path> {
  _SkinClipper(
    this.value,
    this.skin,
  );

  final double value;
  final DBrandSkin skin;

  @override
  Path getClip(Size size) {
    final path = Path();

    double width;
    if (skin.center.x == -1) {
      width = 0.0;
    } else if (skin.center.x == 0) {
      width = size.width / 2;
    } else {
      width = size.width;
    }
    double height;
    if (skin.center.y == -1) {
      height = 0.0;
    } else if (skin.center.y == 0) {
      height = size.height / 2;
    } else {
      height = size.height;
    }

    path.addOval(
      Rect.fromCenter(
        center: Offset(
          width,
          height,
        ),
        width: size.width * value,
        height: size.height * value,
      ),
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class _SkinButton extends StatelessWidget {
  _SkinButton({
    @required this.skin,
    @required this.onTap,
    @required this.isSelected,
  });

  final DBrandSkin skin;
  final void Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: isSelected ? 5.0 : 1.0,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(skin.color),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
