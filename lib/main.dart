import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/pages/cart_page.dart';
import 'package:shoe_app/pages/checkout_page.dart';
import 'package:shoe_app/pages/checkout_success.dart';
import 'package:shoe_app/pages/detail_chat_page.dart';
import 'package:shoe_app/pages/edit_profile_page.dart';
import 'package:shoe_app/pages/home/main_page.dart';
import 'package:shoe_app/pages/product_page.dart';
import 'package:shoe_app/pages/sign_in_page.dart';
import 'package:shoe_app/pages/sign_up_page.dart';
import 'package:shoe_app/pages/splash_page.dart';
import 'package:shoe_app/providers/auth_provider.dart';
import 'package:shoe_app/providers/product_provide.dart';
import 'package:shoe_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
