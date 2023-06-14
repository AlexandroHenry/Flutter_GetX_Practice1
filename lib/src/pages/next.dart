import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("${Get.arguments['firstname']}"),
            //     const SizedBox(
            //       width: 4,
            //     ),
            //     Text("${Get.arguments['lastname']}")
            //   ],
            // ),
            // Text("phone: ${Get.arguments['phone']}"),
            // Text("city: ${Get.arguments['city']}"),
            Text("name: ${(Get.arguments as User).name}"),
            Text("age: ${(Get.arguments as User).age}"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "뒤로가기",
              ),
            )
          ],
        ),
      ),
    );
  }
}
