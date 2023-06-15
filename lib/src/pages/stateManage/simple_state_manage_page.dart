import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_provider.dart';
import 'package:sample_route_manage/src/pages/stateManage/state/with_getx.dart';
import 'package:sample_route_manage/src/pages/stateManage/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put 을 사용하여 인스턴스를 만들어줍니다
    // 이렇게 선언해주면 어디서든지 사용이 가능하게됩니다.
    Get.put(CountControllerWithGetX());

    return Scaffold(
      appBar: AppBar(
        title: const Text('단순 상태 관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: const WithProvider(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Text(""),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text(
//                 "+",
//                 style: TextStyle(
//                   fontSize: 30,
//                 ),
//               ),
//             ),