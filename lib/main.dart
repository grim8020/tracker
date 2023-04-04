import 'package:flutter/material.dart';
import 'package:trackit/home_screen.dart';
import 'package:trackit/loading_screen.dart';
import 'package:trackit/login_and_register_screen.dart';
import 'package:trackit/profile.dart';
import 'package:trackit/schedule.dart';

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
          '/loadingScreen': (context) => LoadingScreen(),
          '/homeScreen': (context) => HomeScreen(),
          '/profile': (context) => Profile(),
          '/loginRegisterScreen': (context) => LoginRegisterScreen(),
          '/schedule': (context) => Schedule(),
        });
  }
}
