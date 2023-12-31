import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "Provider",
            style: TextStyle(fontSize: 50),
          ),
          Consumer<CountControllerWithProvider>(builder: (_, snapshop, child) {
            return Text(
              "${snapshop.count}",
              style: const TextStyle(fontSize: 50),
            );
          }),
          ElevatedButton(
            onPressed: () {
              Provider.of<CountControllerWithProvider>(
                context,
                listen: false,
              ).increase();
            },
            child: const Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
