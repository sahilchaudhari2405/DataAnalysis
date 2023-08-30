import 'dart:ui';
import 'package:csv/csv.dart';
import 'package:dataanalysis/containPage.dart';
import 'package:dataanalysis/home.dart';
import 'package:dataanalysis/icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:postgres/postgres.dart';
import 'package:rive/rive.dart';
import 'package:flutter/services.dart' as rootbundle;

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class chartadd extends StatefulWidget {
  const chartadd({super.key});
  static const String ID = 'chartadd';

  @override
  State<chartadd> createState() => _chartaddState();
}

class _chartaddState extends State<chartadd> {
  Future operation() async {
    var connection = PostgreSQLConnection(
        "postgres://opweaxrq:K8FKWf5HxlmeusuxKnHULvX6ywon4Dw6@mahmud.db.elephantsql.com/opweaxrq",
        5432,
        "opweaxrq",
        username: "opweaxrq",
        password: "K8FKWf5HxlmeusuxKnHULvX6ywon4Dw6",
        useSSL: true);
    try {
      await connection.open();
      print('yes');
    } catch (e) {
      print('error');
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            RiveAnimation.asset(
              'assets/rive/loading.riv',
              fit: BoxFit.contain,
            ),
            ClipRRect(
              // Clip it cleanly.
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  color: Colors.white.withOpacity(0.1),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      print("done");
                    },
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: ((context) => containPage()),
                        //   ),
                        // );
                        setState(() {
                          operation();
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        height: 100,
                        width: 100,
                        child: Icon(
                          Icons.add,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
