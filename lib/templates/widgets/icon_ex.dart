import 'package:flutter/material.dart';

class IconEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        ListTile(title: Text("1. Default Icon Usage")),
        Icon(Icons.dehaze),
        Divider(),
        ListTile(title: Text("2. Icon with style")),
        Icon(
          Icons.dehaze,
          color: Colors.green,
          size: 36,
          semanticLabel: "Dehaze Icon",
        ),
        Divider(),
      ],
    );
  }
}
