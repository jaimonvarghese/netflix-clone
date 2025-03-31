import 'package:flutter/material.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/searh/widgets/searh_text_tile.dart';
import 'package:netflx_clone/presentation/searh/widgets/top_searches_item.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Top Searches',),
        kHeight10,
        Expanded(
          child: ListView.separated(
            itemBuilder: (ctx, index) => TopSearchesItem(),
            separatorBuilder: (ctx, index) => SizedBox(height: 10),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}


