import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_app/core/theming/styles.dart';

class PlantLogoAndName extends StatelessWidget {
  const PlantLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 10.w,
        ),
        Text(
          ' Plant Disease',
          style: TextStyles.font24BlackBold,
        )
      ],
    );
  }
}
