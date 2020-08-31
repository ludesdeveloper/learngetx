import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharingcaring/controller.dart';
import 'package:sharingcaring/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Controller controller = Controller();
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX'),
        ),
        body: Column(
          children: [
            Obx(() => Text(controller.angka.toString())),
            RaisedButton(
              onPressed: () {
                controller.tambahAngka();
              },
              child: Text('Tekan untuk Tambah'),
            ),
            RaisedButton(
              onPressed: () {
                Get.to(NextPage());
              },
              child: Text('Next Page'),
            )
          ],
        ),
      ),
    );
  }
}
