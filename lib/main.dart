import 'package:dating_app/screens/describe_yourself.dart';
import 'package:dating_app/screens/location_screen.dart';
import 'package:dating_app/screens/main_screen.dart';

import 'package:dating_app/screens/registration_screen.dart';
import 'package:dating_app/screens/verification_screen.dart';
import 'package:dating_app/screens/welcome_screen.dart';
import 'package:dating_app/screens/splash_screen.dart';
import 'package:dating_app/screens/your_gender.dart';
import 'package:dating_app/screens/your_pictures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/RegistrationScreen': (context) => const RegistrationScreen(),
        '/VerificationScreen': (context) => const VerificationScreen(),
        '/YourGenderScreen': (context) => const YourGenderScreen(),
        '/YourPicturesScreen': (context) => const YourPicturesScreen(),
        '/DescribeYouscreen': (context) => const DescribeYouScreen(),
        '/YourLocation': (context) => const YourLocation(),
        '/MainScreen': (context) => const MainScreen(),
      },
    );
  }
}
