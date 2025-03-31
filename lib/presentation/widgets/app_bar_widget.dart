import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: Row(
        children: [
          kWidth10,
          Text(
            title,
            style: GoogleFonts.inter(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.cast, color: Colors.white, size: 30),kWidth10,
          Container(width: 30, height: 30, color: Colors.blue),
        ],
      ),
    );
  }
}
