import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/routes_id.dart';

import '../../../routes/app_pages.dart';

class ConfiguratorView extends StatelessWidget {
  const ConfiguratorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Change configurator view'),
    );
  }
}
