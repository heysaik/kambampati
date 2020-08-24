import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        child: BackdropFilter(
          child: Container(
            color: Colors.black38,
            child: Row(
              children: [
                SizedBox(width: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      "© 2021 SAI KAMBAMPATI",
                      style: kCaption2TextStyle.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Built with ♥️ in Flutter",
                      style: kSmallText1TextStyle.copyWith(color: Colors.white),
                    ),
                    Spacer(),
                  ],
                )
              ],
            ),
          ),
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        ),
      ),
    );
  }
}
