// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sample_route_manage/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '라우트 관리 홈',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // 기존의 Navigator
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (_) => const FirstPage(),
                  //   ),
                  // );

                  // GetX
                  Get.to(const FirstPage());
                },
                child: const Text('일반적인 라우트'),
              ),
              ElevatedButton(
                onPressed: () {
                  // 기존의 Named 라우팅
                  // Navigator.of(context).pushNamed("/first");

                  // GetX
                  Get.toNamed("/first");
                },
                child: const Text('Named 라우트'),
              ),
              ElevatedButton(
                onPressed: () {
                  // GetX
                  // Get.to(const FirstPage(), arguments: "Las Vegas");

                  // Get.toNamed(
                  //   "/next",
                  //   arguments: {
                  //     "firstname": "Jeff",
                  //     "lastname": "Ha",
                  //     "phone": 01073112202,
                  //     "city": "New York City",
                  //   },
                  // );

                  Get.toNamed(
                    "/next",
                    arguments: User(
                      name: "Captain Mexico",
                      age: 45,
                    ),
                  );
                },
                child: const Text('Arguments 전달'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    // "/user/28357",
                    "/user/28357?name=jeff&age=22",
                  );
                },
                child: const Text('동적 url 전달'),
              ),
            ],
          ),
        ));
  }
}

class User {
  String name;
  int age;

  User({
    required this.name,
    required this.age,
  });
}
