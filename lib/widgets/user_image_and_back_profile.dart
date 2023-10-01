// ignore_for_file: avoid_print, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:typed_data';

import 'package:driver_app/utils/upload_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class UserImageAndBackgroundProfile extends StatefulWidget {
  const UserImageAndBackgroundProfile({
    super.key,
  });

  @override
  State<UserImageAndBackgroundProfile> createState() =>
      _UserImageAndBackgroundProfileState();
}

class _UserImageAndBackgroundProfileState
    extends State<UserImageAndBackgroundProfile> {
  ImagePicker imagePicker = ImagePicker();
  Uint8List? image1;
  Uint8List? image2;

  selectImageProfile(ImageSource source) async {
    Uint8List img = await pickImage(source);
    setState(() {
      image1 = img;
    });
  }

  selectImageBack(ImageSource source) async {
    Uint8List img = await pickImage(source);
    setState(() {
      image2 = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomLeft,
      children: [
        // ? Background Image
        (image2 != null)
            ? Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: MemoryImage(image2!))),
              )
            : Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/cafe.jpg"))),
              ),

        // ? Profile Image and Camera
        Stack(alignment: Alignment.bottomCenter, children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 128, /*left: 120*/
              ),
              child: (image1 != null)
                  ? CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.black,
                        backgroundImage: MemoryImage(image1!),
                      ),
                    )
                  : CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/christ.jpg",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      onPressed: () => showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => showModalProfile(),
                      ),
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ))),
          ),
        ]),

        // ? Camera Background
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 120),
          child: Container(
            height: 60,
            width: 40,
            // color: Colors.red,
            child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      onPressed: () => showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => showModalBack(),
                      ),
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ))),
          ),
        ),
      ],
    );
  }

  Container showModalBack() {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.35,
      decoration: const BoxDecoration(
          //color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Gap(30),
          ListTile(
            leading: const Icon(
              Icons.camera_alt,
              size: 30,
            ),
            title: const Text(
              'From camera',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              selectImageBack(ImageSource.camera);
              //Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.image,
              size: 35,
            ),
            title: const Text(
              'From gallery',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              selectImageBack(ImageSource.gallery);

              //Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Container showModalProfile() {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.35,
      decoration: const BoxDecoration(
          //color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Gap(30),
          ListTile(
            leading: const Icon(
              Icons.camera_alt,
              size: 30,
            ),
            title: const Text(
              'From camera',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              selectImageProfile(ImageSource.camera);
              //Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.image,
              size: 35,
            ),
            title: const Text(
              'From gallery',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              selectImageProfile(ImageSource.gallery);

              //Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
