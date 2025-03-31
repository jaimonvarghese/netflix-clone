import 'package:flutter/material.dart';
import 'package:netflx_clone/core/constants/constants.dart';
import 'package:netflx_clone/presentation/downloads/widgets/section_2.dart';
import 'package:netflx_clone/presentation/downloads/widgets/section_3.dart';
import 'package:netflx_clone/presentation/downloads/widgets/smart_downloads.dart';
import 'package:netflx_clone/presentation/widgets/app_bar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({super.key});
  final widgetList = [
    SmartDownloads(),
    Section2(),
    kHeight10,
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemBuilder: (ctx, index)=> widgetList[index],
          separatorBuilder: (ctx, index) => SizedBox(height: 20),
          itemCount: widgetList.length,
        ),
      ),
    );
  }
}
