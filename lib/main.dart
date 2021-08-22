import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_app/pages/detail_chat_page.dart';
import 'package:shoe_app/pages/edit_profile_page.dart';
import 'package:shoe_app/pages/home/main_page.dart';
import 'package:shoe_app/pages/sign_in_page.dart';
import 'package:shoe_app/pages/sign_up_page.dart';
import 'package:shoe_app/pages/splash_page.dart';
import 'package:shoe_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage()
      },
    );
  }
}
