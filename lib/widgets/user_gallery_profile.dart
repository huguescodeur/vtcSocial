import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserGalleryProfile extends StatefulWidget {
  const UserGalleryProfile({super.key});

  @override
  State<UserGalleryProfile> createState() => _UserGalleryProfileState();
}

class _UserGalleryProfileState extends State<UserGalleryProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: MasonryGridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 7,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) => Image.asset(
          "assets/images/img${index + 1}.jpeg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
