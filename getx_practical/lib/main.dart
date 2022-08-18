import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practical/pages/details/bindinng/detail_binding.dart';
import 'package:getx_practical/pages/details/view/details.dart';
import 'package:getx_practical/pages/home/Binding/home_binding.dart';
import 'package:getx_practical/pages/home/view/home.dart';

void main() {
  runApp(const MaterialApp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
            name: '/home', page: () => HomeScreen(), binding: HomeBindings()),
        GetPage(
            name: '/detail',
            page: () => DetailScreen(),
            binding: DetailBinding()),
      ],
      initialRoute: "/home",
    );
  }
}
