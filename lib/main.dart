import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (MediaQuery.of(context).platformBrightness == Brightness.dark)
              ? Color(0xFF1F3559)
              : Color(0xFFF1F8FF),
      appBar: AppBar(
        toolbarHeight: 75.0,
        backgroundColor:
            (MediaQuery.of(context).platformBrightness == Brightness.dark)
                ? Color(0xFF1F3559)
                : Color(0xFFF1F8FF),
        titleSpacing: 24.0,
        centerTitle: false,
        shadowColor: Colors.transparent,
        title: Image.network(
          'https://static.wixstatic.com/media/e40212_51ab048239df43ca8635faebefd4c5f4~mv2.png/v1/fill/w_120,h_120,al_c,q_85,usm_0.66_1.00_0.01/Artboard.webp',
          height: 50.0,
        ),
      ),
      body: Center(
        child: Text(
          "Sai Kambampati",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 55.0,
            color:
                (MediaQuery.of(context).platformBrightness == Brightness.dark)
                    ? Color(0xFFF1F8FF)
                    : Color(0xFF1F3559),
          ),
        ),
      ),
    );
  }
}
