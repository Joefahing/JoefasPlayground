import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './experience.dart';
import './aboutme.dart';
import './constants.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: mainFont),
      title: 'My Playground',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            elevation: 0,
            titleSpacing: 0,
            backgroundColor: Color(0xFF6886C5),
            flexibleSpace: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth < 650 ? 40 : 100),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/Squarby2.png', height: 45),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    flex: 2,
                    child: TabBar(
                      indicator: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: Color.fromRGBO(225, 225, 225, 0.7),
                      labelColor: Colors.white,
                      labelStyle: TextStyle(
                          fontFamily: mainFont,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      tabs: [
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          child: Text(
                            'ABOUT ME',
                            style: TextStyle(
                                //  color: Colors.white,
                                fontFamily: mainFont,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          child: Text(
                            'EXPERIENCE',
                            style: TextStyle(
                                fontFamily: mainFont,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: screenWidth > 750 ? 2 : 0,
                    child: Container(
                      width: 1,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF6886C5),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -1),
                  blurRadius: 5,
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                )
              ],
              color: Color(0xFFfcf876)),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 850),
              child: TabBarView(
                children: [
                  Aboutme(),
                  Experience(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
