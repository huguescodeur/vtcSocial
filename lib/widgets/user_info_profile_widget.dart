import 'package:flutter/material.dart';

class UserInfoWidget extends StatefulWidget {
  const UserInfoWidget({super.key});

  @override
  State<UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Goli Yao Hugues",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              letterSpacing: 2),
        ),
        Text(
          "Mobile Developer",
          style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              letterSpacing: 2),
        ),
        Text(
          "www.mysiteweb.com",
          style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
