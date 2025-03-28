import 'package:flutter/material.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/presentation/downloads/downloads_screen.dart';
import 'package:netflx_clone/presentation/fast_laughs/fast_laughs_screen.dart';
import 'package:netflx_clone/presentation/home/home_screen.dart';
import 'package:netflx_clone/presentation/main_page/widgets/bottom_nav_widgets.dart';
import 'package:netflx_clone/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:netflx_clone/presentation/searh/search_screen.dart';

class MainPageScreen extends StatelessWidget {
   MainPageScreen({super.key});

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughsScreen(),
    SearchScreen(),
    DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, child) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavWidgets(),
    );
  }
}
