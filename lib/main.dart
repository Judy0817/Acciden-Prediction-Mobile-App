import 'package:accident_prediction/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'Screens/Dashboard/road_features.dart';
import 'Screens/Dashboard/severity.dart';
import 'Screens/Dashboard/threeyears.dart';
import 'Screens/Dashboard/top20.dart';
import 'Screens/Dashboard/weather.dart';
import 'Screens/signIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/top20': (context) => CityAccidentsChart(),
        '/road_features': (context) => RoadFeatures(),
        '/severity': (context) => SeverityDistribution(),
        '/3years': (context) => ThreeYearsAccidents(),
        '/weather': (context) => WeatherConditions(),
        // '/profileSettings': (context) => ProfileSettingsPage(),
        // '/notifications': (context) => NotificationsPage(),
        // '/helpSupport': (context) => HelpSupportPage(),
        // '/feedback': (context) => FeedbackPage(),
        // '/appInfo': (context) => AppInfoPage(),
        // '/logout': (context) => LogoutPage(),
      },
      home: signIn(),
    );
  }
}
