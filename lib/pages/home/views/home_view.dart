import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:getx_demo/model/user_info.dart';

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
      body: Column(
        children: [
          Expanded(
            child: controller.obx(_buildListResultView,
                onLoading: _buildLoadingView(),
                onEmpty: _buildEmptyView(),
                onError: _buildErrorView),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: controller.loadDataWithError,
              child: const Text('Load data Error')),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: controller.loadDataWithEmpty,
              child: const Text('Load data empty')),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: controller.loadDataHaveResult,
              child: const Text('Load data have result')),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildEmptyView() {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.airplane_ticket_outlined, size:100, color: Colors.grey,),
          SizedBox(height: 8,),
           Text('No data to show'),
        ],
      ),
    );
  }

  Widget _buildErrorView(String? error) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'An error occurred',
          ),
          const SizedBox(height: 8),
          Text(
            error ?? '',
            style: const TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }

  Widget _buildLoadingView() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Loading data...'),
          const SizedBox(height: 8),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }

  Widget _buildListResultView(List<UserInfo>? userList) {
    if (userList == null) return Container();
    return ListView.separated(
        itemBuilder: (context, index) {
          final info = userList![index];
          return Container(
            padding: const EdgeInsets.all(16),
            child: Text(
                '${info.name} - ${info.old} - ${info.isMale ? 'Male' : 'Female'}'),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: userList!.length);
  }
}
