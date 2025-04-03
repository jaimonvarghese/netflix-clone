
import 'package:flutter/material.dart';
import 'package:netflx_clone/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            'https://media.themoviedb.org/t/p/w500_and_h282_face/2Nti3gYAX513wvhp8IiLL6ZDyOm.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_off,
                color: kWhileColor,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
