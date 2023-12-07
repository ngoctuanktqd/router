import 'package:flutter/material.dart';
import 'package:routers/apps/routers/router_custom.dart';
import 'package:routers/apps/routers/router_name.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      initialRoute: RouterName.loginPage,
      onGenerateRoute: RouterCustom.onGenerateRoute,
    );
  }
}
