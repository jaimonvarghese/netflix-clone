
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflx_clone/presentation/new_and_hot/widgets/video_widget.dart';

class ComingSoonItemWidget extends StatelessWidget {
  const ComingSoonItemWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'FEB',
                style: GoogleFonts.inter(fontSize: 20, color: Colors.grey),
              ),
              Text(
                '11',
                style: GoogleFonts.inter(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                children: [
                  Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                      letterSpacing: -2,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.all_out_sharp,
                        title: 'Remind me',
                        iconSize: 20,
                        textSize: 16,
                      ),
                      kWidth10,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: 'info',
                        iconSize: 20,
                        textSize: 16,
                      ),
                      kWidth10,
                    ],
                  ),
                ],
              ),
              kHeight10,
              Text('Coming on Friday'),
              kHeight20,
              Text(
                'TALL GIRL 2',
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
            ],
          ),
        ),
      ],
    );
  }
}
