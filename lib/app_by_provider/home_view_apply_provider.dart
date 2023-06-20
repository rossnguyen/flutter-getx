import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_model.dart';

class HomeViewApplyProvider extends StatelessWidget {
  const HomeViewApplyProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      builder: (ctx, _) => Scaffold(
        appBar: AppBar(
          title: const Text('Provider Home'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer<HomeModel>(
                builder: (_, model, __) => Text(model.count.toString()),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<HomeModel>(ctx, listen: false).increase();
                  },
                  child: const Text('Increase')),
            ],
          ),
        ),
      ),
    );
  }
}
