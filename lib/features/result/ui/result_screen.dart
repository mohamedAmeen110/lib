import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_app/core/helpers/spacing.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, this.image});
  final File? image;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String responseMessage = '';
  String label = "" ;
  String probability = "" ;
    // var url = 'http://127.0.0.1:5000/predict_image';
    var url = 'http://192.168.205.73:5000/predict_image';

  Future<void> uploadFile(File img) async {
    File imageFile = File(img.path);
    List<int> assetBytes = await imageFile.readAsBytes();
    var request = http.MultipartRequest('POST', Uri.parse(url),);
    // ByteData assetByteData = await rootBundle.load('assets/images/testImg.jpg');
    // List<int> assetBytes = assetByteData.buffer.asUint8List();
    var multipartFile = http.MultipartFile.fromBytes(
      'image',
      assetBytes,
      filename: 'testImg.jpg',
      contentType: MediaType('image', 'jpg'),
    );
    request.files.add(multipartFile);
    try {
      var response = await http.Response.fromStream(await request.send());
      if (response.statusCode == 200) {
        print('File uploaded successfully');
        print('Response: ${response.body}');
        // responseMessage = response.body;
        // Assuming your response body is JSON and has 'label' and 'probability' fields
        Map<String, dynamic> jsonResponse = json.decode(response.body);
         label = jsonResponse['label'];
        probability = jsonResponse['probability'].toString();
        print(label);
        print(probability);
        setState(() {
        });
      } else {
        print('Failed to upload file. Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception during file upload: $e');
    }
  }

  @override
  void initState() {
    // _uploadImage(widget.image);
    uploadFile(widget.image!);
    // uploadFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
      
            children: [
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
                top: 550,
                left: -20,
                child: Image.asset(
                  'assets/images/blob1.png',
                  width: 273,
                  height: 245,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
              children: [
                // IconButton(onPressed: (onPressed), icon: icon)
                verticalSpace(100),
                Container(
                  width: double.infinity,
                  height: 400.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Image.file(
                    height: 50.h,
                    widget.image!,
                    fit: BoxFit.fill,
                  ),
                ),
                verticalSpace(50),
                Container(
                    width: double.infinity,
                    // height: 100.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric( vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Label : $label",
                            style: const TextStyle(color: Color(0xff104a20), fontSize: 20 , fontWeight: FontWeight.bold),
                            // textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 30,),
                          Text(
                            "Probability : $probability",
                            style: const TextStyle(color: Color(0xff104a20), fontSize: 20 , fontWeight: FontWeight.bold),
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
              ],
                    ),
                  ),
            ],
          )),
    );



  }


}
