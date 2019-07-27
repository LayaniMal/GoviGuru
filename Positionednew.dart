import 'package:flutter/material.dart';

class Positionednew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(500.0),
              bottomRight: Radius.circular(600.0),
            ),
            child: Container(
              color: Colors.green[600],
              height: 150.0,
              width: 65.0,
            ),
          ),
        ],
      ),
    );
  }
}
