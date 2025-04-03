import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflx_clone/presentation/new_and_hot/widgets/coming_soon_item_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => ComingSoonItemWidget(),
      itemCount: 10,
    );
  }
}
