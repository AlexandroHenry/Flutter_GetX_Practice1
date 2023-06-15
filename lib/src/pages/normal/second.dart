import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // 기존의 방식
                Navigator.of(context).pop();

                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                // 히스토리가 누적된다
                // Get.to(const Home());

                Get.offAll(const Home());

                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     builder: (_) => const Home(),
                //   ),
                //   (route) => false,
                // );
              },
              child: const Text('홈으로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
