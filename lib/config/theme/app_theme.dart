import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.teal,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

const Color _customColor = Color(0xFF5C11D4);

class AppTheme {
  final int seletedColor;
  AppTheme({this.seletedColor=0}):assert(seletedColor>=0 && seletedColor<=_colorThemes.length-1,'Colors must be between 0 and ${_colorThemes.length-1}}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[seletedColor],
    );
  }
}
