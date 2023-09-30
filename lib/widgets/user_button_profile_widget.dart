import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class UserButtonProfileWidget extends StatefulWidget {
  final Function()? onTap;
  final Color color;
  //final Color borderColor;
  //final double borderWidth;
  final IconData icon;
  final String text;
  final GradientBoxBorder? gradientBoxBorder;

  const UserButtonProfileWidget(
      {super.key,
      required this.onTap,
      required this.color,
      //required this.borderColor,
      //required this.borderWidth,
      required this.icon,
      required this.text, this.gradientBoxBorder});

  @override
  State<UserButtonProfileWidget> createState() =>
      _UserButtonProfileWidgetState();
}

class _UserButtonProfileWidgetState extends State<UserButtonProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: widget.onTap,
            child: Container(
              height: 60,
              width: 160,
              decoration: BoxDecoration(
                  color: widget.color,

                  //color: Colors.green.shade500,
                  borderRadius: BorderRadius.circular(15),
                  border: widget.gradientBoxBorder),
              child: ListTile(
                leading: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
                title: Text(
                  widget.text,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),

        ),

      ],
    );
  }
}
