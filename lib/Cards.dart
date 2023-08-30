import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'constant.dart';
import 'datafetch.dart';

class Cards extends StatelessWidget {
  Cards(
      {required this.Images_path,
      required this.Name_graph,
      required this.rive});
  final String Images_path;
  final String Name_graph;
  final bool rive;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Color(0xFFBAB7B8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.white.withAlpha(50),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Container(
          height: 199,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 20),
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFF262626),
                    ),
                    child: Center(
                      child: Text(
                        Name_graph,
                        style: card_logo_textstyle,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 15),
                    child: Text(
                      "DATA ANALYSIS \nAND GRAPH",
                      style: card_heading_textstyle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 19, top: 40),
                      child: Text(
                        date(),
                        style: card_Time_textStyle,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 150,
                width: 150,
                // color: Colors.amber,
                child: (rive == true)
                    ? RiveAnimation.asset('assets/$Images_path')
                    : Lottie.asset(
                        'assets/$Images_path',
                        fit: BoxFit.fitWidth,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
