import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.imagePath, this.h, this.w, this.fit = BoxFit.fill});

  final String imagePath ;
  final double? h;
  final double? w;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
            imagePath,
            height: h,
            width: w,
            fit: BoxFit.fill,
          );
  }
}