import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTile extends StatelessWidget {
  const MainTile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}