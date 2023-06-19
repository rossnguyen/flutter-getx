import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/routes_id.dart';

import '../../routes/app_pages.dart';
import '../../routes/my_profile_routes.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Setting View')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(MyProfileRoutes.UPDATE_AVATAR,
                      id: RoutesId.profileNavigatorId);
                },
                child: const Text('Go to update avatar'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Get.back(id: RoutesId.profileNavigatorId);
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ));
  }
}
