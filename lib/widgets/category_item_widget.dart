import 'package:flutter/material.dart';
import 'package:food_application/widgets/responsive_widgets/responsive_image.dart';
import 'package:food_application/widgets/responsive_widgets/responsive_text.dart';

class CategoryItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String number;

  CategoryItemWidget({this.image, this.name, this.number});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.aspectRatio);
    return LayoutBuilder(
      builder: (context, constrains) {
        print('constrains.maxWidth ${constrains.maxWidth}');
        print('constrains.maxHeight ${constrains.maxHeight}');

        return Column(
          children: [
            AspectRatio(
             aspectRatio: 8/3,
              child: ResponsiveImage(
                image: image,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: constrains.maxHeight * 0.2,
              child: ResponsiveText(
                text: name,
                alignment: Alignment.center,
                width: constrains.maxWidth * 0.3,
              ),
            ),
            Center(
              child: Container(
                width: constrains.maxWidth * 0.01,
                height: constrains.maxHeight * 0.2,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: constrains.maxHeight * 0.21,
              child: ResponsiveText(
                text: number,
                width: constrains.maxWidth * 0.15,
                alignment: Alignment.center,
              ),
            )
          ],
        );
      },
    );
  }
}
