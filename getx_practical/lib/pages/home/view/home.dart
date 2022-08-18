import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practical/pages/home/controller/home_controller.dart';
import 'package:getx_practical/service/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeController.Count}",
                style: TextStyle(fontSize: 24),
              ),
            ),
            FlatButton(
              onPressed: () {
                //Get.toNamed("/detail");
                //print(apiservice.fetchTextfromApi());
                homeController.incerment();
              },
              child: Text("Incerment"),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                //Get.defaultDialog(title: "this is a dialog");
                Get.snackbar("Title", "this is getx snackbar",
                    snackPosition: SnackPosition.BOTTOM);
                //Get.toNamed("/detail");
              },
              child: Text("Go to detail"),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
