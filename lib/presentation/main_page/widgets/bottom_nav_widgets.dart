import 'package:flutter/material.dart';
import 'package:netflx_clone/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavWidgets extends StatelessWidget {
  const BottomNavWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: backgroundColor,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: "New & Hot",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions),
              label: "Fast Laughs",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: "Downloads",
            ),
          ],
        );
      },
    );
  }
}
