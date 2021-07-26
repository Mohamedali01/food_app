import 'package:flutter/material.dart';
import 'package:food_application/widgets/meal_detail_widget.dart';
import 'package:get/get.dart';

class MealDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  buildImage(),
                 buildFavouriteAndShareIcons(),
                  buildBackAndSearchIcons(),
                  buildMeal(context),
                  buildBadge()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned buildMeal(BuildContext context) {
    return Positioned(
                  top: 290,
                  bottom: 1,
                  child: Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '4.9   -   20 mins   -   Free Delivery',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Beef Burger',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Donec laoreet varius ipsum a fermentum. Duis maximus vulputate tellus non vestibulum.",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Nutrition Quantity',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 140,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MealDetailWidget(
                                      name: 'Calories',
                                      number: '255',
                                      amountType: 'kcal',
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MealDetailWidget(
                                      name: 'Protein',
                                      number: '11',
                                      amountType: 'g',
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MealDetailWidget(
                                      amountType: 'mg',
                                      number: '598',
                                      name: 'Sodium',
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MealDetailWidget(
                                      name: 'Cholesterol',
                                      number: '17',
                                      amountType: 'mg',
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Main ingredients',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              buildRowMainIngredients(
                                  text: 'Dough', numberOfCubs: '2'),
                              SizedBox(
                                height: 15,
                              ),
                              buildRowMainIngredients(
                                  text: 'Sauce ', numberOfCubs: '1'),
                              SizedBox(
                                height: 15,
                              ),
                              buildRowMainIngredients(
                                  text: 'Cheese', numberOfCubs: '0.5'),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }

  Padding buildBackAndSearchIcons() {
    return Padding(
                  padding:
                      const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap:()=>Get.back(),
                        child: Image.asset(
                          'assets/images/Back icon.png',
                          scale: 4,
                        ),
                      ),
                      Image.asset(
                        'assets/images/Search icon.png',
                        scale: 4,
                      )
                    ],
                  ),
                );
  }

  Column buildFavouriteAndShareIcons() {
    return Column(
                 children: [
                   Positioned(
                       top: 180,
                       right: 20,
                       child: CircleAvatar(
                         backgroundColor: Colors.white,
                         child: Image.asset('assets/images/Path 35.png',scale: 3,),),),
                    Positioned(
                      top: 230,
                      right: 20,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Group 311.png',scale: 3,),),),
                 ],
               );
  }

  Widget buildRowMainIngredients({String text, String numberOfCubs}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        Text(
          '$numberOfCubs Cup/s',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
        )
      ],
    );
  }

  Widget buildBadge() {
    return Positioned(
      top: 275,
      left: 100,
      child: Container(
        width: 200,
        height: 45,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            Container(
              width: 50,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      left: -10,
                      top: -5,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/Ellipse 5.png',
                            scale: 4,
                          ),
                          Positioned(
                            top: 19,
                            bottom: 0,
                            left: 12,
                            right: 0,
                            child: Text(
                              '\$15.9',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Add to cart',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 8,
            ),
            Image.asset(
              'assets/images/Path 34.png',
              scale: 4,
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    return Container(
      height: 330,
      width: double.infinity,
      child: Image.asset(
        'assets/images/Image.png',
        scale: 0.03,
        fit: BoxFit.cover,
      ),
    );
  }
}
