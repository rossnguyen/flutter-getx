import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/routes_id.dart';

class UpdateAvatarView extends StatelessWidget {
  const UpdateAvatarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Update Avatar View')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
