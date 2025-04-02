import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/home/widgets/back_ground_card.dart';
import 'package:netflx_clone/presentation/home/widgets/main_title_card.dart';
import 'package:netflx_clone/presentation/home/widgets/number_title_card.dart';

ValueNotifier<bool> scrolNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrolNotifier,
          builder: (context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrolNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrolNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      BackGroundCard(),
                      MainTitleCard(title: 'Release in the past year'),
                      kHeight20,
                      MainTitleCard(title: 'Trending now'),
                      kHeight20,
                      NumberTitleCard(title: 'Top 10 Tv Shows In India Today'),
                      kHeight20,
                      MainTitleCard(title: 'Tense Dramas'),
                      kHeight20,
                      MainTitleCard(title: 'South Indain Cinimas'),
                      kHeight20,
                    ],
                  ),
                  scrolNotifier.value
                      ? AnimatedContainer(
                        duration: Duration(milliseconds: 3000),
                        width: double.infinity,
                        height: 100,
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'data:image/png;base64,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',
                                        ),
                                      ),
                                    ),
                                  ),

                                  Spacer(),
                                  Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  kWidth10,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: kWhileColor,
                                  ),
                                ),
                                Text(
                                  'Movies',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: kWhileColor,
                                  ),
                                ),
                                Text(
                                  'Categories',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: kWhileColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                      : kHeight10,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
