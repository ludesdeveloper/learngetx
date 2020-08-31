import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharingcaring/controller.dart';

class NextPage extends StatelessWidget {
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Column(
        children: [
          Obx(() => Text('${controller.angka.toString()}')),
          // Text('Angka yang tadi adalah : ${controller.angka}'),
          RaisedButton(
            onPressed: () {
              Get.snackbar("Snackbar Info", controller.angka.toString());
            },
            child: Text('Snack Bar Testing'),
          ),
          RaisedButton(
            onPressed: () {
              Get.bottomSheet(Column(
                children: [
                  Obx(() => Text(controller.angka.toString())),
                  // Text(controller.angka.toString()),
                  RaisedButton(
                    onPressed: () {
                      controller.tambahAngka();
                    },
                    child: Text('Tambah'),
                  )
                ],
              ));
            },
            child: Text('Bottom'),
          )
        ],
      ),
    );
  }
}
