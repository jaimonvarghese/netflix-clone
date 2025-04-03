import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/1TZ9Er1xEAKizzKKqYVgJIhNkN2.jpg',
          ),
         // fit: BoxFit.cover
        ),
      ),
    );
  }
}
