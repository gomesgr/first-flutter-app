import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String _text;

  TextBox(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: Colors.black.withOpacity(0.4),
      child: Align(
        child: Text(_text, style: Theme.of(context).textTheme.subtitle2),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
