// import 'package:flutter/material.dart';
// import 'package:practice_app/screens/home_screen.dart';

// class AppNavigation {
//   static Future<void> handleSplashTimeout(BuildContext context) async {
//     await Future.delayed(const Duration(seconds: 4));

//     if (!context.mounted) return;

//     Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(builder: (context) => const HomeScreen()),
//       (Route<dynamic> route) => false,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:practice_app/screens/home_screen.dart';

class AppNavigation {
  static Future<void> handleSplashTimeout(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 4));

    if (!context.mounted) return;

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
      (Route<dynamic> route) => false,
    );
  }
}
