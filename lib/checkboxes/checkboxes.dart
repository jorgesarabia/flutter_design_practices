import 'package:flutter/material.dart';
import 'package:flutter_design_practices/checkboxes/widgets/animated_checkbox.dart';
import 'package:flutter_design_practices/checkboxes/widgets/list_tile_checkbox.dart';
import 'package:flutter_design_practices/checkboxes/widgets/rounded_checkbox.dart';

class Checkboxes extends StatefulWidget {
  const Checkboxes({Key? key}) : super(key: key);

  @override
  _CheckboxesState createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkboxes')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedCheckbox(),
            // ListTileCheckBox(),
            // Text('Rounded'),
            // RoundedCheckbox(),
            // Text('Rectangle'),
            // Row(
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           color: _isChecked == true ? Colors.pinkAccent : Colors.black,
            //           width: 2.3,
            //         ),
            //       ),
            //       // width: 24,
            //       // height: 24,
            //       child: Theme(
            //         data: ThemeData(unselectedWidgetColor: Colors.white),
            //         child: Checkbox(
            //           checkColor: Colors.pinkAccent,
            //           activeColor: Colors.transparent,
            //           value: _isChecked,
            //           tristate: false,
            //           onChanged: (bool? isChecked) {
            //             setState(() {
            //               _isChecked = isChecked!;
            //             });
            //           },
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
