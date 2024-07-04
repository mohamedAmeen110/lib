import 'package:flutter/material.dart';
import 'package:plant_disease_app/core/routing/raoutes.dart';
import 'package:plant_disease_app/features/home/ui/home_screen.dart';
import 'package:plant_disease_app/features/on_boarding_screen/ui/on_boarding_screen.dart';
import 'package:plant_disease_app/features/result/ui/result_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const Home());
      case Routes.resultScreen:
        return MaterialPageRoute(builder: (context) => const ResultScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No Route defined for ${settings.name}'),
                ));
    }
  }
}
