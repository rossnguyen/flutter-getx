import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Get.back();
                  },
                  child: const Text('Back to Login'),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context, builder: (ctx) => _buildDialog(ctx: ctx));
                    // Get.dialog(_buildDialog());
                  },
                  child: const Text('Show dialog'),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (ctx) => _buildBottomSheet(ctx: ctx));
                    // Get.bottomSheet(_buildBottomSheet());
                  },
                  child: const Text('Show bottom sheet'),
                ),
              ],
            ),
          );
        }));
  }

  Container _buildBottomSheet({BuildContext? ctx}) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Hello, this is bottom sheet'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(ctx!);
                    // Get.back();
                  },
                  child: const Text('Close'))
            ],
          ),
        ));
  }

  Widget _buildDialog({BuildContext? ctx}) {
    return Dialog(
      insetPadding: const EdgeInsets.all(64),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Hello, this is dialog'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(ctx!);
                  // Get.back();
                },
                child: const Text('Close dialog'))
          ],
        ),
      ),
    );
  }
}
