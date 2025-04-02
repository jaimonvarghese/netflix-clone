import 'package:flutter/material.dart';
import 'package:netflx_clone/core/constants/constants.dart';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 130,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.amber,

        borderRadius: kRadius10,
        image: DecorationImage(
         fit: BoxFit.cover,
          image: NetworkImage(
            'https://media.themoviedb.org/t/p/w500_and_h282_face/7z2lSLmiJ5jNeYCoXmton86BapN.jpg',
          ),
        ),
      ),
    );
  }
}
