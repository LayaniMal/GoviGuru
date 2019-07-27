import 'package:flutter/material.dart';

class NewWidgetnew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    ClipRRect(
      borderRadius:
      BorderRadius.only(bottomRight: Radius.circular(200.0)),
      child: Container(
        color: Colors.yellow[500],
        height: 70.0,
        width: 130.0,
      ),
    );

  }
}
