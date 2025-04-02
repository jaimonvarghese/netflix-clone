
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: GoogleFonts.inter(
            fontSize: 20,
            color: backgroundColor,
          ),
        ),
      ),
      icon: Icon(
        Icons.play_arrow,
        size: 25,
        color: backgroundColor,
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          kWhileColor,
        ),
      ),
    );
  }
}
