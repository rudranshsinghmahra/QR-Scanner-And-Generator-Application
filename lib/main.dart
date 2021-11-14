import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner_flutter/qr_maker_page.dart';
import 'package:qr_code_scanner_flutter/qr_scan_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens = [
    QRScanPage(),
    QRMaker(),
  ];

  final items = [
    Icon(
      Icons.qr_code_scanner,
      color: Colors.black,
    ),
    Icon(
      Icons.qr_code,
      color: Colors.black,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        height: 60,
        backgroundColor: Colors.transparent,
        key: navigationKey,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}