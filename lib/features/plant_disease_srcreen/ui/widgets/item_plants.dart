import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_app/core/theming/colors.dart';

class ItemPlants extends StatelessWidget {
  final String image;

  const ItemPlants({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
          width: double.infinity,
          height: 120.h,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorsManager.gray,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    image,
                    width: 120.w,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 64,
                color: ColorsManager.mainGreen,
                weight: 50,
              )
            ],
          )),
    );
  }
}
