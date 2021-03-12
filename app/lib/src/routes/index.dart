// routes for the app
import 'package:app/src/screens/contributions/forms/create_locked_plan_form.dart';
import 'package:app/src/screens/contributions/wallet.dart';
import 'package:app/src/screens/contributions/locked.dart';
import 'package:app/src/screens/home/index.dart';
import 'package:app/src/screens/onboarding/authentication_screen.dart';
import 'package:app/src/splash_screen.dart';
import 'package:flutter/material.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case '/auth':
      return MaterialPageRoute(builder: (_) => AuthenticationScreen());
    case '/wallet':
      return MaterialPageRoute(builder: (_) => WalletScreen());
    case '/locked':
      return MaterialPageRoute(builder: (_) => LockedScreen());
    case '/create_locked_plan_form':
      return MaterialPageRoute(builder: (_) => CreateLockedPlanForm());
    default:
      return MaterialPageRoute(builder: (_) => SplashScreen());
  }
}
