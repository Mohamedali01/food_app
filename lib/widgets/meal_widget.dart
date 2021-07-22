import 'package:flutter/material.dart';

class MealWidget extends StatelessWidget {
  final String image;
  final String price;
  final String name;
  final String rating;
  final String timePerMinute;

  MealWidget(
      {this.image, this.price, this.name, this.rating, this.timePerMinute});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Image.asset(
                image,
                scale: 3.5,
              ),
              Positioned(
                right: -12,
                bottom: -15,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Ellipse 5.png',
                      scale: 3,
                    ),
                    Positioned(
                      // left: 0,
                      // right: 0,
                      // top: 0,
                      bottom: 33,
                      left: 27,
                      child: Text(
                        price,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$rating   -   $timePerMinute mins',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
