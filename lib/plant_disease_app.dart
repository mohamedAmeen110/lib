import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_app/core/routing/app_routes.dart';
import 'package:plant_disease_app/core/routing/raoutes.dart';
import 'package:plant_disease_app/core/theming/colors.dart';

class PlantDiseaseApp extends StatelessWidget {
  final AppRoute appRoute;
  const PlantDiseaseApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(primaryColor: ColorsManager.mainGreen),
        onGenerateRoute: appRoute.generateRoute,
        initialRoute: Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
