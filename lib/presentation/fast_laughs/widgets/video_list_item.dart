import 'package:flutter/material.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/presentation/fast_laughs/widgets/video_action_widget.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off, color: kWhileColor, size: 30),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/1TZ9Er1xEAKizzKKqYVgJIhNkN2.jpg',
                        ),
                      ),
                    ),
                    VideoActionWidget(
                      icon: Icons.emoji_emotions_rounded,
                      title: 'LOL',
                    ),
                    VideoActionWidget(icon: Icons.add, title: 'My List'),
                    VideoActionWidget(icon: Icons.share, title: 'Share'),
                    VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
