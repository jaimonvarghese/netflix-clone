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
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9oG2Om1HAcH2NkaJ3cyCSpicxEMkw5t7FRHBAMWYiv04Bs-LgOZi8X2v4nvOvu2eQh4I&usqp=CAU',
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
