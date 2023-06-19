import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_pages.dart';

class QuotationView extends StatelessWidget {
  const QuotationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Quotation View'),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.SUMMARY);
              },
              child: Text('Go to summary'))
        ],
      ),
    );
  }
}
