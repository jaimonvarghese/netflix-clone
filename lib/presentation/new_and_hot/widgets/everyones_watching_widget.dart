import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflx_clone/presentation/new_and_hot/widgets/everyones_watching_item_widget.dart';
import 'package:netflx_clone/presentation/new_and_hot/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => EveryonesWatchingItemWidget(),
      ),
    );
  }
}
