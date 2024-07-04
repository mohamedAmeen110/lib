import 'package:flutter/material.dart';

class PlantImageAndText extends StatelessWidget {
  const PlantImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white.withOpacity(0.0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4])),
          child:
              Image.asset('assets/images/plants_image.png', fit: BoxFit.fill),
        ),
      ],
    );
  }
}
