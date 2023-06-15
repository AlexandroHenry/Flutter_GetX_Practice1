import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({super.key});
  final CountControllerWithGetX _controllerWithGetX =
      Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return ElevatedButton(
      onPressed: () {
        // Get.find<CountControllerWithGetX>().increase();
        _controllerWithGetX.increase(id);
      },
      child: Text(
        "$id 버튼 ",
        style: const TextStyle(fontSize: 30),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "GetX",
            style: TextStyle(fontSize: 50),
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
