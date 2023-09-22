import 'package:easy_book/ui/main/home/Home.dart';
import 'package:flutter/material.dart';

/// Created by heyanlin on 2023/9/22.


class MainPage {
  BottomNavigationBarItem navigationBarItem;
  Widget widget;
  MainPage(this.navigationBarItem, this.widget);
}

List<MainPage> mainPages = [
  MainPage(
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
      ),
      const HomePage()
  ),
  MainPage(
      const BottomNavigationBarItem(icon: Icon(Icons.star)),
      const HomePage()
  ),
];


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  // 当前子项索引
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(''),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //BottomNavigationBarItem(icon: icon)
        ],
      ),
    );
  }
}