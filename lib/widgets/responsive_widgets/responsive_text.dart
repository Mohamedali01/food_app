import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double width;
  final TextStyle style;
  final AlignmentGeometry alignment;

  ResponsiveText(
      {this.text,
        this.width,
        this.style,
      this.alignment = Alignment.topLeft});

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: alignment,
      child: Container(
        width: width,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
