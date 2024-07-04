// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:plant_disease_app/core/helpers/spacing.dart';
// import 'package:plant_disease_app/features/result/ui/widgets/button_image_picker.dart';
// import 'package:path/path.dart' as path;

// class AddPhoto extends StatefulWidget {
//   const AddPhoto({super.key});

//   @override
//   State<AddPhoto> createState() => _AddPhotoState();
// }

// class _AddPhotoState extends State<AddPhoto> {
//   File? _selectionImage;
//   File? _selectionTakeImage;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               ButtonImagesPicker(iconData: Icons.image, function: addImage),
//               verticalSpace(50),
//               ButtonImagesPicker(iconData: Icons.camera, function: takePhoto),
//             ],
//           ),
//           _selectionImage != null
//               ? Image.file(_selectionImage!)
//               : const Text('Select Photo from Gallery'),
//           verticalSpace(50),
//           _selectionTakeImage != null
//               ? Image.file(_selectionTakeImage!)
//               : const Text('Select Photo from camera')
//         ],
//       ),
//     );
//   }

//   Future<String> addImage() async {
//     String? fileName;
//     final returnImage =
//         await ImagePicker().pickImage(source: ImageSource.gallery);

//     setState(() {
//       _selectionImage = File(returnImage!.path);
//       List<int> imageBytes = _selectionImage!.readAsBytesSync();
//       String base64Image = base64Encode(imageBytes);
//       fileName = path.basename(_selectionImage!.path);
//       print('>>>>>>>>>>>>>>>>>>>>${returnImage.path}');
//       print('>>>>>>>>>>>>>>>>>>>>${_selectionImage!.path}');
//       print('>>>>>>>>>>>>>>>>>>>>${fileName}');
//     });
//     return fileName!;
//   }

//   Future takePhoto() async {
//     final returnTakePhoto =
//         await ImagePicker().pickImage(source: ImageSource.camera);
//     setState(() {
//       _selectionTakeImage = File(returnTakePhoto!.path);
//       print('>>>>>>>>>>>>>>>>>>>>${returnTakePhoto.path}');
//       print('>>>>>>>>>>>>>>>>>>>>${_selectionTakeImage!.path}');
//     });
//   }
// }
