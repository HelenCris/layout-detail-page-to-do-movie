import 'package:flutter/material.dart';

import '../../themes/app_theme.dart';
import 'home_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
