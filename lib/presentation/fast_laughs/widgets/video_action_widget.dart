import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: kWhileColor, size: 30),
          Text(title, style: GoogleFonts.inter(color: kWhileColor, fontSize: 16)),
        ],
      ),
    );
  }
}
