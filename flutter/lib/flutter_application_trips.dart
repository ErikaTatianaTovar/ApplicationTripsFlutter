import 'package:application/home_application.dart';
import 'package:flutter/material.dart';

class FlutterApplication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _FlutterApplication();
  }

}

class _FlutterApplication extends State<FlutterApplication> {
  final List<Widget> widgetsChildren = [
    HomeApplication()
  ]
  void onTapTapped(int index){

  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: ,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              ),
            ]
        ),
      ),
    );
  }
}