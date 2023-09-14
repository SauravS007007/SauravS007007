import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:racemose/app/modules/Profile/Views/view1.dart';
import 'package:racemose/app/modules/Root/Views/view1.dart';
import 'package:racemose/app/modules/auth/Views/view1.dart';
import 'package:racemose/app/modules/authentication/views/authView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => loginView()),
        GetPage(name: "/profile", page: () => ProfileView())
      ],
      // routes: {'/': (context) => RootView(),},
    );
  }
}
