import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/searh/widgets/search_idle.dart';
import 'package:netflx_clone/presentation/searh/widgets/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.3),
                prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle,
                  color: Colors.grey,
                ),
                style: TextStyle(color: Colors.white),
              ),
              kHeight10,
             // Expanded(child: SearchIdle()),
             Expanded(child: SearchResult()),
            ],
          ),
        ),
      ),
    );
  }
}
