import 'package:flutter/material.dart';
import 'package:food_application/view/meal_detail_view.dart';
import 'package:food_application/widgets/category_item_widget.dart';
import 'package:food_application/widgets/meal_widget.dart';
import 'package:food_application/widgets/responsive_widgets/responsive_text.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: SafeArea(
        child: Container(
          width: width,
          height: double.infinity,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      ///Menu
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/Menu_icon.png',
                        scale: 0.8,
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ResponsiveText(
                      alignment: Alignment.center,
                      text: 'FIND YOUR',
                      width: width * 0.15,
                    ),
                    ResponsiveText(
                      alignment: Alignment.center,
                      text: 'Favorite Foods',
                      width: width * 0.4,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    buildSearchContainer(width),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              buildCategoriesContainer(
                  height: height, width: width, context: context),
              SizedBox(height: 30),
              Container(
                  height: 300,
                  width: width,
                  padding: EdgeInsets.only(left: 32),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => InkWell(
                            onTap: () => Get.to(MealDetailView()),
                            child: MealWidget(
                              image: 'assets/images/OGMOK20.png',
                              name: 'Beef Burger',
                              price: '15.9',
                              rating: '4.9',
                              timePerMinute: '20',
                            ),
                          ),
                      separatorBuilder: (ctx, i) => SizedBox(
                            width: 20,
                          ),
                      itemCount: 10)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchContainer(double width) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: width * 0.9,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListTile(
          leading: Icon(
            Icons.search,
            size: 25,
          ),
          title: Container(
            // margin: EdgeInsets.only(bottom: 8),
            child: TextFormField(
              scrollPadding: EdgeInsets.zero,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ),
          trailing: Image.asset(
            'assets/images/Group 12.png',
            scale: 3,
          ),
        ),
      ),
    );
  }

  Container buildCategoriesContainer(
      {double height, double width, BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: AspectRatio(
          aspectRatio:3.5 ,
          child: Container(
            child: LayoutBuilder(
              builder: (context, constrains) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: constrains.maxWidth*0.2,
                      height: constrains.maxHeight,
                      child: CategoryItemWidget(
                        image: 'assets/images/Group 14.png',
                        name: 'Burger',
                        number: '15',
                      ),
                    ),
                    Container(
                      width: constrains.maxWidth*0.2,
                      height: constrains.maxHeight,
                      child: CategoryItemWidget(
                        image: 'assets/images/Group 18.png',
                        name: 'Pizza',
                        number: '18',
                      ),
                    ),
                    Container(
                      width: constrains.maxWidth*0.2,
                      height: constrains.maxHeight,
                      child: CategoryItemWidget(
                        image: 'assets/images/Path 19.png',
                        name: 'Rolls',
                        number: '12',
                      ),
                    ),
                    Container(
                      width: constrains.maxWidth*0.2,
                      height: constrains.maxHeight,
                      child: CategoryItemWidget(
                        image: 'assets/images/Group 34.png',
                        name: 'Soup',
                        number: '20',
                      ),
                    ),
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
