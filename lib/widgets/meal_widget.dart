import 'package:flutter/material.dart';
import 'package:food_application/widgets/responsive_widgets/responsive_image.dart';
import 'package:food_application/widgets/responsive_widgets/responsive_text.dart';

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
    return LayoutBuilder(
      builder: (context, constrains) {
        print('maxWidth1: ${constrains.maxWidth}');
        return Container(
          padding: EdgeInsets.only(top: constrains.maxHeight*0.1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ResponsiveImage(
                      image: image,
                    ),
                  ),
                  Positioned(
                    left: constrains.maxWidth * 0.65,
                    top: constrains.maxHeight * 0.3,
                    child: CircleAvatar(
                      radius: constrains.maxWidth * 0.1,
                      backgroundColor: Color(0xffFF8C46),
                      child: ResponsiveText(
                        alignment: Alignment.center,
                        text: '15.9',
                        width: constrains.maxWidth * 0.15,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ResponsiveText(
                text: name,
                width: constrains.maxWidth * 0.4,
                alignment: Alignment.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
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
                  ResponsiveText(
                    text: '$rating   -   $timePerMinute mins',
                    width: constrains.maxWidth * 0.5,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
