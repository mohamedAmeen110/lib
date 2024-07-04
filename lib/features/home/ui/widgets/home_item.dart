import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_disease_app/core/helpers/extensions.dart';
import 'package:plant_disease_app/core/helpers/spacing.dart';
import 'package:plant_disease_app/core/theming/colors.dart';
import 'package:plant_disease_app/core/theming/styles.dart';
import 'package:plant_disease_app/features/result/ui/result_screen.dart';

class HomeItem extends StatefulWidget {
  const HomeItem({super.key});

  @override
  State<HomeItem> createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  File? _selectionImage;
  File? _selectionTakeImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 492,
          left: 270,
          child: Image.asset(
            'assets/images/animation_500_kcit151v.gif',
            width: 131,
            height: 155,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: -40,
          left: 110,
          child: Image.asset(
            'assets/images/blob1.png',
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 447,
          left: -20,
          child: Image.asset(
            'assets/images/blob1.png',
            width: 273,
            height: 245,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 90,
          left: 28,
          child: Container(
            width: 278.w,
            height: 580.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1),
                  offset: const Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 19, left: 24),
                  child: Text(
                    'Hi! Welcome to plant disease detection',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF195F57),
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: 238.w,
                  height: 260.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: const Offset(1, 1),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'what is plant safe?',
                            style: TextStyle(
                              color: const Color(0xFF195F57),
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            '✓ Turn your Android phone into a mobile crop doctor.',
                            style: TextStyle(
                              color: const Color(0xFF195F57),
                              fontSize: 15.sp,
                            ),
                            maxLines: 5,
                          ),
                          Text(
                            '✓ With just one photo, PlantSafe diagnoses infected crops and offers treatments for any disease.',
                            style: TextStyle(
                              color: const Color(0xFF195F57),
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            "✓ Benefit from agricultural experts' know-how or help fellow farmers with your knowledge",
                            style: TextStyle(
                              color: const Color(0xFF195F57),
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                Container(
                  width: 238,
                  height: 176,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: const Offset(1, 1),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(/*left: 21 ,*/ top: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 21.0),
                          child: Text(
                            'Heal Your Crop!',
                            style: TextStyle(
                              color: Color(0xFF195F57),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 27),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/qr.png',
                                width: 38, height: 39),
                            const SizedBox(width: 12),
                            Image.asset('assets/images/next.png',
                                width: 16, height: 34),
                            const SizedBox(width: 7),
                            Image.asset('assets/images/paper.png',
                                width: 48, height: 48),
                            const SizedBox(width: 1),
                            Image.asset('assets/images/next.png',
                                width: 16, height: 34),
                            const SizedBox(width: 2),
                            Image.asset(
                                'assets/images/healthcare-and-medical.png',
                                width: 47,
                                height: 53),
                          ],
                        ),
                        verticalSpace(10),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        ColorsManager.mainGreen),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    maximumSize: MaterialStateProperty.all(
                                        const Size(double.infinity, 52)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)))),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            content: const Text(
                                              'Choose',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            actions: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  TextButton(
                                                      onPressed: () async {
                                                        await takePhoto()
                                                            .then((value) {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ResultScreen(
                                                                            image:
                                                                                _selectionTakeImage,
                                                                          )));
                                                        });
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Image.asset(
                                                            'assets/images/camera.jpg',
                                                            width: 50.w,
                                                            height: 50.h,
                                                          ),
                                                          const Text('Camera')
                                                        ],
                                                      )),
                                                  horizontalSpace(15),
                                                  TextButton(
                                                      onPressed: () async {
                                                        addImage().then((value) {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      ResultScreen(
                                                                          image:
                                                                              _selectionImage)));
                                                        });
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Image.asset(
                                                            'assets/images/gallery.jpg',
                                                            width: 50.w,
                                                            height: 50.h,
                                                          ),
                                                          const Text('Gallery'),
                                                        ],
                                                      )),
                                                ],
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  context.pop();
                                                },
                                                child: const Text('Cancel'),
                                              )
                                            ],
                                          ));
                                },
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.camera_alt,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    horizontalSpace(20),
                                    const Text('Take a Picture',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                )),
                          ),
                        )
                        // const Camera(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: -5,
          child: Image.asset(
            'assets/images/logo.png',
            width: 120,
            height: 35,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Future addImage() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _selectionImage = File(returnImage!.path);
      print('>>>>>>>>>>>>>>>>>>>>${returnImage.path}');
      print('>>>>>>>>>>>>>>>>>>>>${_selectionImage!.path}');
    });
  }

  Future takePhoto() async {
    final returnTakePhoto =
        await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _selectionTakeImage = File(returnTakePhoto!.path);
      print('>>>>>>>>>>>>>>>>>>>>${returnTakePhoto.path}');
      print('>>>>>>>>>>>>>>>>>>>>${_selectionTakeImage!.path}');
    });
  }
}
