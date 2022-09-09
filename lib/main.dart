import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyDiary());
}

class MyDiary extends StatefulWidget {
  const MyDiary({Key? key}) : super(key: key);

  @override
  State<MyDiary> createState() => _MyDiaryState();
}

class _MyDiaryState extends State<MyDiary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        body: Home(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 7,
            child: Container(
              height: 65,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home),
                            Text("Home"),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.chat_outlined),
                            Text("Chats"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person),
                            Text("Profile"),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.settings),
                            Text("Settings"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // BubbleBottomBar(
        //   opacity: .2,
        //   currentIndex: 1,
        //   // onTap: changePage,
        //   borderRadius: BorderRadius.circular(20.0),
        //   elevation: 8,
        //   fabLocation: BubbleBottomBarFabLocation.end, //new
        //   hasNotch: true, //new
        //   hasInk: true, //new, gives a cute ink effect
        //   inkColor:
        //       Colors.black12, //optional, uses theme color if not specified
        //   items: <BubbleBottomBarItem>[
        //     BubbleBottomBarItem(
        //       backgroundColor: Colors.red,
        //       icon: Icon(
        //         Icons.dashboard,
        //         color: Colors.black,
        //       ),
        //       activeIcon: Icon(
        //         Icons.dashboard,
        //         color: Colors.red,
        //       ),
        //       title: Text("Home"),
        //     ),
        //     BubbleBottomBarItem(
        //         backgroundColor: Colors.deepPurple,
        //         icon: Icon(
        //           Icons.access_time,
        //           color: Colors.black,
        //         ),
        //         activeIcon: Icon(
        //           Icons.access_time,
        //           color: Colors.deepPurple,
        //         ),
        //         title: Text("Logs")),
        //     BubbleBottomBarItem(
        //         backgroundColor: Colors.indigo,
        //         icon: Icon(
        //           Icons.folder_open,
        //           color: Colors.black,
        //         ),
        //         activeIcon: Icon(
        //           Icons.folder_open,
        //           color: Colors.indigo,
        //         ),
        //         title: Text("Folders")),
        //     BubbleBottomBarItem(
        //         backgroundColor: Colors.green,
        //         icon: Icon(
        //           Icons.menu,
        //           color: Colors.black,
        //         ),
        //         activeIcon: Icon(
        //           Icons.menu,
        //           color: Colors.green,
        //         ),
        //         title: Text("Menu"))
        //   ],
        // ),
      ),
    );
  }
}
