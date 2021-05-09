import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import './constants.dart';
import './widgets/terminal_window.dart';
import 'components/header.dart';

import 'dart:html';

class Aboutme extends StatefulWidget {
  @override
  _AboutmeState createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  AnimationController _controller;
  Animation _animation1;
  Animation _animation2;

  final aboutme = '''
Hello visitors, welcome to my playground!

Currently, I'm a data analyst at Libro Credit Union. Throughout my time working at Libro I have gained expertise on data-related technologies such as SSIS, SSRS, SQL Server, and Power BI to name a few. In addition to my technical skills, I have learned how to plan my projects, write design documents, create user manuals for future references, and more. Recently, I have begun to transition my role into Python-oriented development with the use of libraries such as Pandas and Numpy. I am excited for this opportunity and I'm looking forward to learning to gain expertise.

On a more personal note, I walking around downtown while taking street portraits about anything I find interesting. Furthermore, I like to invest in stock which inspired me to create this website to track data on the popular formula Wall Street Bets

https://wallstreetbetsclients.web.app/#/
''';

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 6500),
    );

    _animation1 = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Interval(0.4, 0.45, curve: Curves.linear)));

    _animation2 = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Interval(0.96, 0.98, curve: Curves.linear)));

    _controller.forward();
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  TextStyle _makeTerminalTextStyle(double fontSize) {
    return TextStyle(
        color: Colors.white, fontFamily: mainFont, fontSize: fontSize, fontWeight: FontWeight.w500);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Header(),
              Expanded(
                child: Center(
                  child: Container(
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: 1000,
                              child: ListView(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                children: <Widget>[
                                  SizedBox(
                                    height: 25,
                                  ),
                                  TerminalWindow(
                                    windowTitle: Text('About Me',
                                        style: TextStyle(
                                            fontFamily: mainFont,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            wordSpacing: 5)),
                                    height: 650,
                                    content: Padding(
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          TypewriterAnimatedTextKit(
                                            text: ['JoJo-MacBook-Pro ~ % cat readme.dm'],
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontFamily: mainFont,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                            speed: Duration(milliseconds: 80),
                                            totalRepeatCount: 1,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          FadeTransition(
                                            opacity: _animation1,
                                            child: Text(aboutme, style: _makeTerminalTextStyle(16)),
                                          ),
                                          TypewriterAnimatedTextKit(
                                            text: ['', 'JoJo-MacBook-Pro ~ % cat contact_info.txt'],
                                            textStyle: _makeTerminalTextStyle(18),
                                            pause: Duration(milliseconds: 3000),
                                            speed: Duration(milliseconds: 80),
                                            totalRepeatCount: 1,
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          FadeTransition(
                                            opacity: _animation2,
                                            child: Column(
                                              children: <Widget>[
                                                ContactField(
                                                  contactSource: 'Resume',
                                                  contactContent: 'View',
                                                  url:
                                                      'https://drive.google.com/file/d/1nkWEGMkJ3RTjPywPjMdzig2aFlgnAclv/view?usp=sharing',
                                                  websiteName: 'googledrive',
                                                ),
                                                ContactField(
                                                  contactSource: 'Email',
                                                  contactContent: 'Joefahing@gmail',
                                                ),
                                                ContactField(
                                                  contactSource: 'Linkedin',
                                                  contactContent: 'Guan Cao',
                                                  url: 'https://www.linkedin.com/in/guancao/',
                                                  websiteName: 'Linkedin',
                                                ),
                                                ContactField(
                                                    contactSource: 'Github',
                                                    contactContent: 'Joefahing',
                                                    url: 'https://github.com/Joefahing',
                                                    websiteName: 'github')
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactField extends StatelessWidget {
  final String url;
  final String websiteName;
  final String contactSource;
  final String contactContent;

  ContactField({this.url, this.websiteName, this.contactContent, this.contactSource});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: <Widget>[
          Text(
            contactSource,
            style: TextStyle(
                color: Colors.white,
                fontFamily: mainFont,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 15),
          Material(
            color: Colors.black,
            child: InkWell(
              child: Text(
                contactContent,
                style: TextStyle(
                    color: Color(0xff035aa6),
                    decoration: TextDecoration.underline,
                    fontFamily: mainFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                window.open(url, websiteName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
