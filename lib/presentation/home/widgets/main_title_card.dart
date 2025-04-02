import 'package:flutter/material.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/home/widgets/home_main_card.dart';

import 'package:netflx_clone/presentation/widgets/main_tile.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTile(title:title),
          kHeight10,
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => HomeMainCard()),
            ),
          ),
        ],
      ),
    );
  }
}
