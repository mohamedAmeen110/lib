import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_disease_app/core/helpers/extensions.dart';
import 'package:plant_disease_app/core/routing/raoutes.dart';
import 'package:plant_disease_app/core/theming/colors.dart';
import 'package:plant_disease_app/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsManager.mainGreen),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            maximumSize:
                MaterialStateProperty.all(const Size(double.infinity, 52)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        onPressed: () {
          context.pushNamed(Routes.homeScreen);
        },
        child: Text(
          'Get Started',
          style: TextStyles.font16whiteSMedium,
        ));
  }
}
