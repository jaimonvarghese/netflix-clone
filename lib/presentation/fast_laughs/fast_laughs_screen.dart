import 'package:flutter/material.dart';
import 'package:netflx_clone/presentation/fast_laughs/widgets/video_list_item.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index){
          return VideoListItem(index: index,);
        }),
      )),
    );
  }
}