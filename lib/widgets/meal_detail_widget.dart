import 'package:flutter/material.dart';

class MealDetailWidget extends StatelessWidget {
  final String number;
  final String name;
  final String amountType;


  MealDetailWidget({this.number, this.name, this.amountType});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 150,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color(0xffFFF0E7),
          ),
        ),
        Positioned(
          top: 2,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/Ellipse 5.png',
                    scale: 3,
                  ),
                  Positioned(
                    top: 24,
                    child: Text(
                      number,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                amountType,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        )
      ],
    );
  }
}
