import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.number});
  final int number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 40, height: 200),
            Container(
              margin: EdgeInsets.all(5),
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,

                borderRadius: kRadius10,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://media.themoviedb.org/t/p/w500_and_h282_face/7z2lSLmiJ5jNeYCoXmton86BapN.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -30,
          left: 13,

          child: BorderedText(
            strokeWidth: 10,
            strokeColor: kWhileColor,
            child: Text(
              '${number + 1}',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 150,
                color: backgroundColor,
                decoration: TextDecoration.none,
                decorationColor: backgroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
