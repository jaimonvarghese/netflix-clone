
import 'package:flutter/material.dart';
import 'package:netflx_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflx_clone/presentation/home/widgets/play_button_widget.dart';

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://media.themoviedb.org/t/p/w500_and_h282_face/7z2lSLmiJ5jNeYCoXmton86BapN.jpg',
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(icon: Icons.add, title: 'My List'),
                PlayButtonWidget(),
                CustomButtonWidget(icon: Icons.info, title: 'Info')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
