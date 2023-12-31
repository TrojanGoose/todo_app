import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/views/task_page.dart';

import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/task', page: () => const TaskPage())
      ],
    );
  }
}
