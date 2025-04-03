import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflx_clone/core/colors/colors.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflx_clone/presentation/new_and_hot/widgets/everyones_watching_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: Text(
            'New & Hot',
            style: GoogleFonts.inter(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kWhileColor,
            ),
          ),
          actions: [
            Icon(Icons.cast, color: Colors.white, size: 30),
            kWidth10,
            Container(width: 30, height: 30, color: Colors.blue),
            kWidth10,
          ],
          bottom: TabBar(
            unselectedLabelColor: kWhileColor,
            labelColor: backgroundColor,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            indicator: BoxDecoration(
              color: kWhileColor,
              borderRadius: kRadius30,
            ),
            tabs: [
              Tab(text: " 🍿 Coming Soon  "),
              Tab(text: "👀 Everyone's Watching "),
            ],
          ),
        ),
        body: TabBarView(
          children: [ComingSoonWidget(), EveryonesWatchingWidget()],
        ),
      ),
    );
  }
}
