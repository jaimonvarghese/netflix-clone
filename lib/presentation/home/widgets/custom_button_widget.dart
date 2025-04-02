import 'package:flutter/material.dart';
import 'package:netflx_clone/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key, required this.icon, required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: kWhileColor, size: 30),
        Text(title,style: TextStyle(fontSize: 18),),
      ],
    );
  }
}