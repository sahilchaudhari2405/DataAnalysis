import 'package:dataanalysis/insert_excel_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rive/rive.dart';
import 'datafetch.dart';
import 'Cards.dart';
import 'icons.dart';

class containPage extends StatelessWidget {
  static const String ID = 'containPage';
  final List<String> names = <String>[
    'Aby',
    'Aish',
    'Ayan',
    'Ben',
    'Bob',
    'Charlie',
    'Cook',
    'Carline'
  ];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: const Text('AH'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "DATA PATH",
                    style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Cards(
                    Images_path: 'rive/loading.riv',
                    Name_graph: 'sahil',
                    rive: true,
                  ),
                  Cards(
                    Images_path: 'lottie/graph8.json',
                    Name_graph: 'lean',
                    rive: false,
                  ),
                  Cards(
                    Images_path: 'rive/loading1.riv',
                    Name_graph: 'sahil',
                    rive: true,
                  ),
                  Cards(
                    Images_path: 'lottie/home.json',
                    Name_graph: 'lean',
                    rive: false,
                  ),
                  Cards(
                    Images_path: 'lottie/home.json',
                    Name_graph: 'lean',
                    rive: false,
                  ),
                  Cards(
                    Images_path: 'lottie/home.json',
                    Name_graph: 'lean',
                    rive: false,
                  ),
                  Cards(
                    Images_path: 'lottie/home.json',
                    Name_graph: 'lean',
                    rive: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 150,
              margin: EdgeInsets.all(10),
              // color: Colors.amber,
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: double.maxFinite,
                      child: Text(
                        "DATA ACTIONS",
                        style: TextStyle(
                            fontFamily: 'SpaceGrotesk',
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 75,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: menu_icons(
                                icondata: FontAwesomeIcons.download,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => chartadd()),
                                  ),
                                );
                              },
                              child: menu_icons(
                                  icondata: FontAwesomeIcons.chartLine),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                                onTap: () {
                                  print("done");
                                },
                                child: menu_icons(
                                  icondata: FontAwesomeIcons.arrowRotateRight,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child:
                                  menu_icons(icondata: FontAwesomeIcons.bars),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "HISTORY",
                style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.all(2),
                    color: msgCount[index] >= 10
                        ? Colors.grey[400]
                        : msgCount[index] > 3
                            ? Colors.grey[300]
                            : Colors.grey,
                    child: Center(
                      child: Text(
                        '${names[index]} (${msgCount[index]})',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
