import 'package:driver_app/screens/home/profile_screen.dart';
import 'package:driver_app/widgets/user_info_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/user_image_and_back_profile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 5,
      itemBuilder: (context, index) => Container(
        height: 100,
        width: double.infinity,
        color: Colors.red,
      ),
    ));
  }
}
