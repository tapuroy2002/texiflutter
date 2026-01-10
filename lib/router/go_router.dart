import 'package:go_router/go_router.dart';
import 'package:taxiflutter/screens/home_screen.dart';
import 'package:taxiflutter/screens/login_screens.dart';
import 'package:taxiflutter/screens/trip_summary_on_going_trip.dart';

class goRouter {
  static final GoRouter router = GoRouter(
      routes: [
        GoRoute(path: '/',
        builder: (context, state) {
          return TripSummaryOnGoingTrip();
        }),

        GoRoute(path: '/home',
            builder: (context, state) {
              return HomeScreen();
            }),

      ]
  );
}
