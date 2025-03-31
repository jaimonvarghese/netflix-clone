
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/downloads/widgets/DownloadsImageWidget.dart';

class Section2 extends StatelessWidget {
   Section2({super.key});
  
  final List imageList = [
    'https://image.tmdb.org/t/p/w1280/2Abt2GgscAGtGAXTrhH44qPhugI.jpg',
    'https://image.tmdb.org/t/p/w1280/kWNCRgt3ocv19bYO0sk7TRuZuFY.jpg',
    'https://image.tmdb.org/t/p/w1280/dGjoPttcbKR5VWg1jQuNFB247KL.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
              'Introducing Downloads for you',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 24,
                color: kWhileColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight10,
            Text(
              "We'll' download a personalized selection of \n movies and shows for you. so there's \n always something to watch on your \n decive.",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: screenSize.width * 0.43,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                  ),

                  DownloadsImageWidget(
                    imageList: imageList[0],
                    margin: EdgeInsets.only(left: 140, bottom: 50),
                    angle: 20,
                    size: Size(screenSize.width * 0.4, screenSize.width * 0.58),
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[1],
                    margin: EdgeInsets.only(right: 140, bottom: 50),
                    angle: -20,
                    size: Size(screenSize.width * 0.4, screenSize.width * 0.58),
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[2],
                    margin: EdgeInsets.only(bottom: 10),
                    size: Size(screenSize.width * 0.45, screenSize.width * 0.68),
                  ),
                ],
              ),
            ),
      ],
    );
  }
}