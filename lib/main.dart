import 'package:flutter/material.dart';
import 'package:trackit/faq.dart';
import 'package:trackit/home_screen.dart';
import 'package:trackit/loading_screen.dart';
import 'package:trackit/login_and_register_screen.dart';
import 'package:trackit/messages.dart';
import 'package:trackit/profile.dart';
import 'package:trackit/recent_requests.dart';
import 'package:trackit/schedule.dart';
import 'package:trackit/settings.dart';
import 'package:trackit/urgent_request.dart';
import 'package:trackit/urgent_request_confirmation.dart';

void main() {
  runApp(const TrackIT());
}

class TrackIT extends StatelessWidget {
  const TrackIT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/loadingScreen',
        routes: {
          '/loadingScreen': (context) => const LoadingScreen(),
          '/homeScreen': (context) => const HomeScreen(),
          '/profile': (context) => const Profile(),
          '/loginRegisterScreen': (context) => const LoginRegisterScreen(),
          '/schedule': (context) => const Schedule(),
          '/messages': (context) => const Messages(),
          '/settings': (context) => const Settings(),
          '/faq': (context) => const FAQs(),
          '/recentRequests': (context) => const RecentRequests(),
          '/urgentRequest': (context) => const UrgentRequest(),
          '/urgentRequestConfirmation': (context) =>
              const UrgentRequestConfirmation(),
        });
  }
}
