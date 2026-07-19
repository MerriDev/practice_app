import 'package:go_router/go_router.dart';
import 'package:practice_app/screens/home_screen.dart';
import 'package:practice_app/screens/profile_screen.dart';
import 'package:practice_app/screens/splash_screen.dart';

// class AppRouter {
//   static final GoRouter router = GoRouter(
//     initialLocation: '/',
//     routes: [
//       GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
//       GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
//       GoRoute(
//         path: '/profile',
//         builder: (context, state) {
//           final name = state.extra as String;
//           return ProfileScreen(userName: name);
//         },
//       ),
//     ],
//   );
// }

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/profile',
        builder: (context, state) {
          final name = state.extra as String;
          return ProfileScreen(userName: name);
        },
      ),
    ],
  );
}
