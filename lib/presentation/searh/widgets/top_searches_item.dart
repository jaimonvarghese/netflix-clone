import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';

class TopSearchesItem extends StatelessWidget {
  const TopSearchesItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://media.themoviedb.org/t/p/w500_and_h282_face/7z2lSLmiJ5jNeYCoXmton86BapN.jpg',
              ),
            ),
          ),
        ),
        kWidth10,
        Expanded(
          child: Text(
            'Movie Name',
            style: GoogleFonts.inter(
              color: kWhileColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: kWhileColor,
          radius: 20,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: backgroundColor,
            child: Center(
              child: Icon(CupertinoIcons.play_fill, color: kWhileColor),
            ),
          ),
        ),
      ],
    );
  }
}
