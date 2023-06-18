import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';

import '../../routes/app_pages.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Setting')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Get.back();
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ));
  }
}
