import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextSection extends StatelessWidget {
  Color _color;

  TextSection(this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('h1'),
    );
  }
}