import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Obx(() => Text(controller.count.value.toString())),
            const SizedBox(height: 8),
            Obx(() => Text(controller.onceMessage.value)),
            Obx(() => Text(controller.everMessage.value)),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: controller.increment, child: const Text('Increase')),
            const SizedBox(height: 8),

            
            TextFormField(
              controller: controller.inputController,
              onChanged: (v) => controller.updateText(),
              decoration: const InputDecoration(hintText: 'Enter the text'),
            ),
            const SizedBox(height: 8,),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const Text('Debouce list keyword'),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Obx(() => ListView.separated(
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(controller.debounceKeywordList[index]),
                              ),
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: controller.debounceKeywordList.length)),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    const Text('Interval list keyword'),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Obx(() => ListView.separated(
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(controller.intervalKeywordList[index]),
                              ),
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: controller.intervalKeywordList.length)),
                    ),
                  ],
                ))
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
