import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/auth/auth.dart';
import 'package:my_first_app/firebase_options.dart';
import 'package:my_first_app/pages/signup_page.dart';
import 'package:my_first_app/pages/home_page.dart';
import 'package:my_first_app/styles/app_colors.dart';
import 'package:my_first_app/pages/login_page.dart';
import 'package:my_first_app/pages/fb.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform); //firebase

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: AuthPage(),
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background),
      routes: {
        '/signup': (context) => SignUpPage(),
        '/home_page': (context) => HomePage(),
        '/login_page': (context) => LoginPage(),
        '/fb': (context) => FeedbackForm(),
      },
    );
  }
}
