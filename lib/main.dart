import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'landing_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'SUBASTA EL CORRAL S.A',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPageView(),
    );
  }
}
