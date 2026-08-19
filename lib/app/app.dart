import 'package:flutter/material.dart';
import 'package:cine_scope/app/router.dart';
import 'package:cine_scope/app/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'CineScope',
      theme: AppTheme.dark,
      routerConfig: router,
    );
  }
}
