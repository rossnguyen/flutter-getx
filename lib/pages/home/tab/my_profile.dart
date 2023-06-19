import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/home/setting_view.dart';
import 'package:getx_demo/routes/routes_id.dart';

import '../../../routes/app_pages.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(RoutesId.subProfileNavigatorId),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            page: () => Scaffold(
              appBar: AppBar(
                title: Text("My Profile"),
              ),
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.SETTING,
                        id: RoutesId
                            .subProfileNavigatorId); // navigate by your nested route by index
                  },
                  child: Text("Go to Setting"),
                ),
              ),
            ),
          );
        } else if (settings.name == Routes.SETTING) {
          return GetPageRoute(
            page: () => SettingView(),
          );
        }
      },
    );
  }
}
