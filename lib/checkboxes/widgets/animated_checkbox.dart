import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedCheckbox extends StatefulWidget {
  const AnimatedCheckbox({Key? key}) : super(key: key);

  @override
  _AnimatedCheckboxState createState() => _AnimatedCheckboxState();
}

class _AnimatedCheckboxState extends State<AnimatedCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
      ),
      width: 100,
      height: 100,
      child: SvgPicture.asset('assets/checkbox/check-green.svg'),
    );
  }
}
