// home.dart
// For web-specific featuresimport 'dart:html' as html; // For web-specific features
import 'dart:typed_data';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:file_picker/file_picker.dart';
import 'package:nasa/afat/Slugs.dart';
import 'package:http/http.dart' as http;
import 'package:nasa/afat/bees.dart';
import 'package:nasa/afat/moths.dart';
import 'package:nasa/afat/Ants.dart';

import 'dart:convert';

import 'package:nasa/afat/snails.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Uint8List? webImage;
  String? apiResponse; // To store the response from the API

  Future<void> pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );

    if (result != null && result.files.single.bytes != null) {
      setState(() {
        webImage = result.files.single.bytes;
      });

      // Send the image to the API after picking it
      await uploadImage(result.files.single.bytes!);
    }
  }

  Future<void> uploadImage(Uint8List imageBytes) async {
    try {
      // Prepare the API URL
      final url = Uri.parse('http://192.168.1.10:5000/upload'); // Replace with your actual API endpoint

      // Create a multipart request
      var request = http.MultipartRequest('POST', url);
      request.files.add(http.MultipartFile.fromBytes('file', imageBytes, filename: 'uploaded_image.jpg'));

      // Send the request
      var response = await request.send();

      // Check the response
      if (response.statusCode == 200) {
        // Parse the response
        var responseData = await response.stream.toBytes();
        var result = utf8.decode(responseData);
        setState(() {
          apiResponse = result; // Update the API response
        });
      } else {
        setState(() {
          apiResponse = 'Error: ${response.statusCode}'; // Handle errors
        });
      }
    } catch (e) {
      setState(() {
        apiResponse = 'Exception: $e'; // Handle exceptions
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Upload to API'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text(
              'Hello, please upload an image!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: pickImage,
              child: const Text('Upload an Image'),
            ),
            const SizedBox(height: 20),
            webImage != null
                ? Image.memory(webImage!, width: 300, height: 300, fit: BoxFit.cover)
                : const Text('No image uploaded'),
            const SizedBox(height: 20),
            // Display the API response if available
            apiResponse != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      apiResponse!,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  )
                : const Text('No response from the API'),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,
                children: [
                 Expanded (
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         afatbutton('ants', context,  const Ants()),

                        
                        afatbutton('Slugs', context,  const Slugs()),
                        const SizedBox(width: 25),
                        afatbutton('Snails', context,  const Snails()),
                        const SizedBox(width: 25),
                        afatbutton('Moths', context,  const Moths()),
                        const SizedBox(width: 25),
                        afatbutton('bees', context,  const Bees()),
                        const SizedBox(width: 25),
                      ],
                    ),
                  ),
                  
                  // Add additional buttons as necessary
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget afatbutton(String label, BuildContext context, Widget nextPage) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => nextPage),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: const Color(0xff232D5C),
    ),
    child: Text(
      label,
      style: const TextStyle(fontSize: 18, color: Colors.white),
    ),
  );
}