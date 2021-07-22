import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String number;

  CategoryItemWidget({this.image, this.name, this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          scale: 3,
        ),
        SizedBox(
          height: 10,
        ),
        Text(name),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            width: 1,
            height: 20,
            color: Colors.deepOrange,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(number)
      ],
    );
  }
}
