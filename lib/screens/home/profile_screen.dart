// ignore_for_file: sized_box_for_whitespace, avoid_print, avoid_unnecessary_containers

import 'package:driver_app/widgets/user_button_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../utils/colors.dart';
import '../../widgets/user_image_and_back_profile.dart';
import '../../widgets/user_info_profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const String idScreen = "profile";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // var sizeWidth = double.infinity / 2;
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: Container(
          width: double.infinity,
          child: ListView(
            children: <Widget>[
              const UserImageAndBackroundProfile(),
              const UserInfoWidget(),
              Container(
                  width: double.infinity,
                  height: 73,
                  //color: Colors.amberAccent,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UserButtonProfileWidget(
                            onTap: () {},
                            color: Colors.green.withOpacity(0.7),
                            gradientBoxBorder: const GradientBoxBorder(
                                gradient: LinearGradient(
                                    colors: [Colors.white, Colors.white]),
                                width: 3),
                            icon: Icons.image,
                            text: "2,7K Posts"),
                        const Gap(15),
                        UserButtonProfileWidget(
                          onTap: () {},
                          color: Colors.green.withOpacity(0.2),
                          icon: Icons.people_alt,
                          text: "3K Friends",
                          gradientBoxBorder: const GradientBoxBorder(
                              gradient: LinearGradient(
                                colors: [Colors.yellow, Colors.red],
                              ),
                              width: 3),
                        ),
                      ])),
              SizedBox(
                height: 600,
                child: MasonryGridView.builder(
                  //physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemBuilder: (context, index) => Image.asset(
                    "assets/images/img${index + 1}.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
