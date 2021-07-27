import 'package:flutter/material.dart';
import 'package:food_application/view/main_view.dart';
import 'package:get/get.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'pop'),
      home: MainView(),
    );
  }
}
