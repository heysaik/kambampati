import 'dart:ui';
import 'package:flutter/material.dart';

class HomeMenuBar extends StatefulWidget {
  @override
  _HomeMenuBarState createState() => _HomeMenuBarState();
}

class _HomeMenuBarState extends State<HomeMenuBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(40.0),
      ),
      child: BackdropFilter(
        child: Container(
          width: 627,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            color: Colors.white.withOpacity(0.3),
          ),
          child: Row(
            children: [
              Spacer(),
              Spacer(),
            ],
          ),
        ),
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      ),
    );
  }
}
