import 'package:flutter/material.dart';
import 'package:food_application/view/meal_detail_view.dart';
import 'package:food_application/widgets/category_item_widget.dart';
import 'package:food_application/widgets/meal_widget.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: SafeArea(
        child: Container(
          width: double.infinity,
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
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'FIND YOUR',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Favorite Foods',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      width: 350,
                      height: 55,
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
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 50),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryItemWidget(
                        image: 'assets/images/Group 14.png',
                        name: 'Burger',
                        number: '15',
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CategoryItemWidget(
                        image: 'assets/images/Group 18.png',
                        name: 'Pizza',
                        number: '18',
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CategoryItemWidget(
                        image: 'assets/images/Path 19.png',
                        name: 'Rolls',
                        number: '12',
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CategoryItemWidget(
                        image: 'assets/images/Group 34.png',
                        name: 'Soup',
                        number: '20',
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                  height: 300,
                  width: double.infinity,
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
}
