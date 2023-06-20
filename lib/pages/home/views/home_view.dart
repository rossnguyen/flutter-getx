import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetX Home'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
          Obx(() => Text(controller.count.toString())),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: controller.increment, child: const Text('Increase')),
          const SizedBox(height: 32),
          Obx(() => Text(
              '${controller.customerInfo.value.name} - ${controller.customerInfo.value.old} - ${controller.customerInfo.value.isMale ? 'Male' : 'Female'}')),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: controller.updateName,
              child: const Text('Update name')),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: controller.replaceCustomer,
              child: const Text('Replace customer')),
          // Obx(() => ListView.separated(
          //       shrinkWrap: true,
          //       physics: const NeverScrollableScrollPhysics(),
          //       itemCount: controller.listUser.length,
          //       itemBuilder: (ctx, index) {
          //         final info = controller.listUser[index];
          //         return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Text(
          //                 '${info.name} - ${info.old} - ${info.isMale ? 'Male' : 'Female'}'));
          //       },
          //       separatorBuilder: (ctx, index) => const Divider(),
          //     )),
          // const SizedBox(
          //   height: 8
          // ),
          // ElevatedButton(
          //     onPressed: controller.addMoreCustomer,
          //     child: const Text('Add more customer')),

          // const SizedBox(height: 8),
          // ElevatedButton(
          //     onPressed: controller.removeCustomer,
          //     child: const Text('Remove last')),

          // const SizedBox(height: 8),
          // ElevatedButton(
          //     onPressed: controller.refreshListAndAdSingle,
          //     child: const Text('Refresh and add single')),

          // const SizedBox(height: 8),
          // ElevatedButton(
          //     onPressed: controller.replaceListWithNewList,
          //     child: const Text('Replace with another list')),
        ]),
      ),
    );
  }
}
