import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflx_clone/core/colors/colors.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.margin,
    required this.imageList,
    this.angle = 0,
    required this.size,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,

        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
          image: DecorationImage(
            image: NetworkImage(imageList),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}