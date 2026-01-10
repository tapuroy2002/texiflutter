import 'package:go_router/go_router.dart';
import 'package:taxiflutter/screens/home_screen.dart';
import 'package:taxiflutter/screens/login_screens.dart';

class goRouter {
  static final GoRouter router = GoRouter(
      routes: [
        GoRoute(path: '/',
        builder: (context, state) {
          return LoginScreens();
        }),

        GoRoute(path: '/home',
            builder: (context, state) {
              return HomeScreen();
            }),

      ]
  );
}
