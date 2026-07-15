import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:info_app/core/extensions/context_extensions.dart';
import 'package:info_app/core/extensions/num_extensions.dart';
import 'package:info_app/core/theming/theming_colors.dart';
import 'package:info_app/core/theming/theming_typography.dart';
import 'package:info_app/features/home/ui/widgets/location_button.dart';
import 'package:info_app/features/home/ui/widgets/location_card.dart';
import 'package:info_app/features/home/ui/widgets/picker_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ImagePicker imagePicker = ImagePicker();
  bool didUserSelect = false;
  double? lat;
  double? long;
  String? placeName;
  File? selectedImageFile;

  Future<void> pickImage(ImageSource source) async {
    final XFile? image = await imagePicker.pickImage(source: source);
    if (image != null) {
      setState(() {
        didUserSelect = true;
        selectedImageFile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info App", style: ThemingTypography.bold20),
        centerTitle: true,
      ),
      body: Padding(
        padding: const .all(24),
        child: Column(
          children: [
            Container(
              width: .infinity,
              height: context.height * .4,
              decoration: BoxDecoration(
                color: ThemingColors.primaryColor,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(100),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: didUserSelect
                  ? Image.file(selectedImageFile!)
                  : Column(
                      mainAxisAlignment: .center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: ThemingColors.secondaryColor
                              .withAlpha(40),
                          child: Icon(
                            size: 35,
                            Icons.image_outlined,
                            color: ThemingColors.secondaryColor,
                          ),
                        ),
                        32.vGap,
                        Text(
                          "No Image Selected",
                          style: ThemingTypography.bold20,
                        ),
                        5.vGap,
                        Text("Pick an image from gallery or camera."),
                      ],
                    ),
            ),
            16.vGap,
            Row(
              children: [
                PickerButton(
                  text: "Pick From Gallery",
                  onTap: () {
                    pickImage(ImageSource.gallery);
                  },
                ),
                8.hGap,
                PickerButton(
                  text: "Pick From Camera",
                  onTap: () {
                    pickImage(ImageSource.camera);
                  },
                  icon: Icons.camera_alt_outlined,
                ),
              ],
            ),
            16.vGap,
            LocationButton(onTap: () {}),
            16.vGap,
            LocationCard(
              lat: lat == null ? "---" : lat.toString(),
              long: long == null ? "---" : long.toString(),
              placeName: placeName ?? "No Place Selected",
            ),
          ],
        ),
      ),
    );
  }
}
