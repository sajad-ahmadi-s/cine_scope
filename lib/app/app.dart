import 'package:flutter/material.dart';
import 'package:reel_glass/app/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Reel Glass',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      routerConfig: router,
    );
  }
}
