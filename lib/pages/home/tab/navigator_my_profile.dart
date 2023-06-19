import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/my_profile/my_profile_view.dart';
import 'package:getx_demo/pages/setting/setting_view.dart';
import 'package:getx_demo/pages/update_avatar/update_avatar_view.dart';
import 'package:getx_demo/routes/my_profile_routes.dart';
import 'package:getx_demo/routes/routes_id.dart';

import '../../../routes/app_pages.dart';

class NavigatorMyProfile extends StatelessWidget {
  const NavigatorMyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(RoutesId.profileNavigatorId),
      initialRoute: MyProfileRoutes.MY_PROFILE,
      onGenerateRoute: (settings) {
        return GetPageRoute(
          page: () {
            switch (settings.name) {
              case MyProfileRoutes.MY_PROFILE:
                return MyProfileView();
              case MyProfileRoutes.SETTING:
                return SettingView();
              case MyProfileRoutes.UPDATE_AVATAR:
                return UpdateAvatarView();
              default:
                return MyProfileView();
            }
          },
        );
      },
    );
  }
}
