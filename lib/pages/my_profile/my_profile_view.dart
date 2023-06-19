import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/routes_id.dart';

import '../../routes/app_pages.dart';
import '../../routes/my_profile_routes.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(MyProfileRoutes.SETTING,
                id: RoutesId.profileNavigatorId,
                arguments: {
                  'hello': 'My name is Ross'
                }); // navigate by your nested route by index
          },
          child: Text("Go to Setting"),
        ),
      ),
    );
  }
}
