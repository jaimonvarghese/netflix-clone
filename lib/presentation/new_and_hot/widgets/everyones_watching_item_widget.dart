
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflx_clone/presentation/new_and_hot/widgets/video_widget.dart';

class EveryonesWatchingItemWidget extends StatelessWidget {
  const EveryonesWatchingItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        Text(
          'Friends',
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kWhileColor,
          ),
        ),
        kHeight10,
        Text(
          'The Paragraphs module in Drupal offers editors a component-driven architecture for building pages with flexibility and ease. Since 2015, Morpht has been at the forefront of developing innovative approaches to site building using Paragraphs. ',
    
          style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),
        ),
        kHeight50,
        VideoWidget(),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
    
          children: [
            CustomButtonWidget(
              icon: Icons.share,
              title: 'Share',
              iconSize: 30,
              textSize: 16,
            ),
            kWidth10,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'My List ',
              iconSize: 30,
              textSize: 16,
            ),
            kWidth10,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              iconSize: 30,
              textSize: 16,
            ),
            kWidth10,
          ],
        ),
      ],
    );
  }
}
