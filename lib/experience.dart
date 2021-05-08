import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import './widgets/color_box.dart';
import './constants.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final dividerHeight = 60.0;
    final duration = 500;
    final delay = 500;

    return Container(
      padding: const EdgeInsets.only(right: 40, left: 40, top: 10, bottom: 5),
      //color: Color(0xfff35588),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            width: 2,
            height: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(children: [
                  PlayAnimation<double>(
                    tween: Tween(begin: 0, end: 1.0),
                    duration: Duration(milliseconds: duration),
                    builder: (BuildContext context, Widget child, double value) {
                      return Opacity(
                        opacity: value,
                        child: ExperienceBox(
                            company: 'Libro Credit Union',
                            position: 'Data Analyst',
                            date: 'Sept 2019 - Current',
                            colors: [skyblue, sunrise, grassGreen],
                            description:
                                '''Working at Libro, my responsibility includes developing dashboards using SQL Server, Power Bi, and SSRS to help other departments visualize their data and automating ETL processes using SSIS. For one of my most recent project, I created Libro first Contact Center dashboard with useful metrics to give insight on our call quality and customer satisfaction'''),
                      );
                    },
                  ),
                  SizedBox(height: dividerHeight),
                  PlayAnimation<double>(
                    tween: Tween(begin: 0, end: 1.0),
                    duration: Duration(milliseconds: duration),
                    delay: Duration(milliseconds: delay),
                    builder: (BuildContext context, Widget child, double value) {
                      return Opacity(
                        opacity: value,
                        child: ExperienceBox(
                          company: 'University of Windsor',
                          position: 'Tutor',
                          date: 'Nov 2017 - April 2018',
                          colors: [facebookBlue, sunrise, Colors.white],
                          description:
                              '''Helped my student who was in high school to learn game design using C# and the Unity game engine by going through 30 days of Coding on C# and assigning him assignments on a weekly bases. By the end, my student was able to create simple platformer''',
                        ),
                      );
                    },
                  ),
                  SizedBox(height: dividerHeight),
                  PlayAnimation<double>(
                    tween: Tween(begin: 0, end: 1.0),
                    duration: Duration(milliseconds: duration),
                    delay: Duration(milliseconds: delay * 2),
                    builder: (BuildContext context, Widget child, double value) {
                      return Opacity(
                        opacity: value,
                        child: ExperienceBox(
                          company: 'University of Windsor',
                          position: 'Research Assistant',
                          date: 'Nov 2016 - April 2017',
                          colors: [facebookBlue, sunrise, Colors.white],
                          description:
                              '''For this position, I was a web master for a platform created by a professor at the University of Windsor. I provided technical support for her students on thing like uploading their work and adding forms. Lastly, I also created a script for the professor to track her students submission progress''',
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: dividerHeight,
                  ),
                  PlayAnimation<double>(
                    tween: Tween(begin: 0, end: 1.0),
                    duration: Duration(milliseconds: duration),
                    delay: Duration(milliseconds: delay * 3),
                    builder: (BuildContext context, Widget child, double value) {
                      return Opacity(
                        opacity: value,
                        child: ExperienceBox(
                          company: 'University of Windsor',
                          position: 'Started University',
                          date: 'Sept 2014',
                          colors: [leafGreen],
                          description: '',
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: dividerHeight,
                  ),
                  Row(
                    children: [
                      ColorBox(
                        colors: [Colors.black],
                        width: 50,
                        height: 50,
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExperienceBox extends StatelessWidget {
  final String company;
  final String position;
  final String date;
  final String description;
  final List<Color> colors;

  ExperienceBox({this.company, this.position, this.date, this.description, this.colors});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ColorBox(width: 50, height: 50, colors: this.colors),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              /* boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 2)
                ]*/
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      this.company,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 13),
                    Text(
                      this.position,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        wordSpacing: 5,
                      ),
                    ),
                    SizedBox(width: 13),
                    Text(
                      this.date,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: silver,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  this.description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
