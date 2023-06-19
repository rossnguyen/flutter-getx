import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ConfiguratorView extends StatelessWidget {
  const ConfiguratorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Change configurator view'),
          SizedBox(height: 8,),
          ElevatedButton(onPressed: (){Get.toNamed(Routes.SETTING);}, child: Text('Go to setting'))
        ],
      ),
    );
  }
}
