import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task7/views/homepage/homepage.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.offAll(const HomePage()));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/splash.png'),
              const Text('Grocery Plus',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
