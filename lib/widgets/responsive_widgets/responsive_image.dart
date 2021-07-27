import 'package:flutter/material.dart';

class ResponsiveImage extends StatelessWidget {
  final double height;
  final double width;
  final String image;

  ResponsiveImage({this.height, this.width, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Image.asset(
        image,
      ),
    );
  }
}
