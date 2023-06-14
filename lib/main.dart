import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/named/first.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';
import 'package:sample_route_manage/src/pages/next.dart';
import 'package:sample_route_manage/src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const Home(),

      initialRoute: "/",

      // 기존의 Named 라우팅
      // routes: {
      //   "/": (context) => const Home(),
      //   "/first": (context) => const FirstNamedPage(),
      //   "/second": (context) => const SecondNamedPage(),
      // },

      // GetX Named 라우팅
      getPages: [
        GetPage(
          name: "/",
          page: () => const Home(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/first",
          page: () => const FirstNamedPage(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/second",
          page: () => const SecondNamedPage(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/next",
          page: () => const NextPage(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: "/user/:uid",
          page: () => const UserPage(),
          transition: Transition.cupertino,
        ),
      ],
    );
  }
}
