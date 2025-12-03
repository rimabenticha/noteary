import 'package:flutter_application_1/features/auth/presentation/views/signin_screen.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_screen.dart';
import 'package:flutter_application_1/features/navigation_menu.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSigninScreen = '/';
  static const String kNavigationMenu = '/navigationMenu';
  static const String kHomeScreen = '/homeScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SigninScreen()),
      GoRoute(
        path: kNavigationMenu,
        builder: (context, state) => const NavigationMenu(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
