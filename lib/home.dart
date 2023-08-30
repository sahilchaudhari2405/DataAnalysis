import 'package:dataanalysis/containPage.dart';
import 'package:dataanalysis/insert_excel_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});
  static const String ID = 'home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
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
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'you best marketing & data analyser',
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 45.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'you best marketing & data analyser',
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 10.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                flex: 7,
                child: Lottie.asset(
                  'assets/lottie/home.json',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(265, 50),
                    backgroundColor: Color(0xFF161B2D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => chartadd()),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "START",
                        style: TextStyle(
                          fontFamily: 'SpaceGrotesk',
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30.0,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
