import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practical/pages/home/controller/home_controller.dart';
import 'package:getx_practical/service/api_service.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiservice = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            //Get.back();
            print(homeController.Count);
          },
        ),
      ),
    );
  }
}
