import 'package:flutter/material.dart';

class ListTileCheckBox extends StatefulWidget {
  const ListTileCheckBox({Key? key}) : super(key: key);

  @override
  _ListTileState createState() => _ListTileState();
}

class _ListTileState extends State<ListTileCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      title: Text('Hola'),
      activeColor: Colors.white,
      checkColor: Colors.red,
      secondary: const Icon(Icons.hourglass_empty),
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
