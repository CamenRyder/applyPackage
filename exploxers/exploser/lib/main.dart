import 'package:flutter/material.dart';
import 'package:we_slide/we_slide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  final double _panelMinSize = 80;

  final _controller = WeSlideController();
  final _pagaController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final double _panelMaxSize = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      // Container(
      //   height: 80,
      //   color: Colors.white,
      //   child: const Center(
      //     child: Text("Navigator bar"),
      //   ),
      // ),
      backgroundColor: Colors.black,
      body: SafeArea(child: WeSlide(
        parallax: true,
        hideAppBar: true,
        hideFooter: true,
        panelMinSize: _panelMinSize,
        panelMaxSize: _panelMaxSize,
        backgroundColor: Colors.white,
        panelBorderRadiusBegin: 20.0,
        panelBorderRadiusEnd: 20.0,
        parallaxOffset: 0.3,
        appBarHeight: 80.0,
        controller: _controller,
        appBar: AppBar(
          title: Text("We Slide"),
          backgroundColor: Colors.blue,
        ),
        body: PageView(
          controller: _pagaController,
          children: [
            Container(
              color: Colors.tealAccent,
              child: Center(child: Text("This page one 💪")),
            ),
            Container(
              color: Colors.tealAccent,
              child: Center(child: Text("This is 2 💪")),
            ),
            Container(
              color: Colors.tealAccent,
              child: Center(child: Text("This is 3 💪")),
            ),
            Container(
              color: Colors.tealAccent,
              child: Center(child: Text("This is 4 💪")),
            ),
          ],
        ),
        panel: Container(
          color: Colors.red,
          child: Container( height: 500, color:Colors.green, child: Center(child: Text("Caculator"),),),
        ),
        panelHeader: GestureDetector(
          onTap: () {
            _controller.show();
          },
          child: Container(
            height: 0,
            color: Colors.blue,
            child: const Center(child: Text("Slide to Up ☝️")),
          ),
        ),
      ),), 
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
               label: "Noti"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
               label: "Menu"
            ),
          ],
        ),
      ),
    ));
  }
}
