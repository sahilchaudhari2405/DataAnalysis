import 'package:dataanalysis/containPage.dart';
import 'package:dataanalysis/home.dart';
import 'package:dataanalysis/insert_excel_sheet.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(dataView());
}

class dataView extends StatelessWidget {
  const dataView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFE8E0E2),
      ),
      initialRoute: home_page.ID,
      routes: {
        home_page.ID: (context) => home_page(),
        containPage.ID: (context) => containPage(),
        chartadd.ID: (context) => chartadd(),
      },
    );
  }
}
