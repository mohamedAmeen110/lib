import 'package:flutter/material.dart';

class ButtonImagesPicker extends StatelessWidget {
  const ButtonImagesPicker(
      {super.key, required this.iconData, required this.function});
  final IconData iconData;
  final Future Function() function;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: function, icon: Icon(iconData));
  }
}