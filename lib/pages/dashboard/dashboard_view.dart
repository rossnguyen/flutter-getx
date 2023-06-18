import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardView extends StatelessWidget{
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Dash board')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
              Get.back();
            },
            child: const Text('Back to Home'),
          ),
        ));
  }

}