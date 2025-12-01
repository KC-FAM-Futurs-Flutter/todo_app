import 'package:flutter/material.dart';

class BackgroundDismissible extends StatelessWidget {
  final int direction;
  const BackgroundDismissible({super.key, required this.direction});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: direction == 0 ? Colors.red : Colors.yellow,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Align(
        alignment: direction == 0
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Icon(Icons.delete, color: Colors.white, size: 30),
      ),
    );
  }
}
