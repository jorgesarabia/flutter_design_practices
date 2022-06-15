import 'package:flutter/material.dart';

class RoundedCheckbox extends StatefulWidget {
  const RoundedCheckbox({Key? key}) : super(key: key);

  @override
  _RoundedCheckboxState createState() => _RoundedCheckboxState();
}

class _RoundedCheckboxState extends State<RoundedCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      overlayColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.purple; // the color when checkbox is selected;
          }
          return Colors.purple; //the color when checkbox is unselected;
        },
      ),
      // fillColor: MaterialStateColor.resolveWith(
      //   (states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return Colors.purple; // the color when checkbox is selected;
      //     }
      //     return Colors.purple; //the color when checkbox is unselected;
      //   },
      // ),
      activeColor: Colors.white,
      checkColor: Colors.blue,
      // side: BorderSide(
      //   color: Colors.green,
      //   width: 3,
      // ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
