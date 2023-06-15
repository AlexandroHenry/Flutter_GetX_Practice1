import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // 기존의 방식
                // Navigator.of(context).pop();

                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                // 모든 히스토리를 지우고 해당 named 페이지로 이동
                Get.offAllNamed("/");
              },
              child: const Text('홈으로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
