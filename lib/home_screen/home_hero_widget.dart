import 'package:flutter/material.dart';
import '../constants.dart';

class HomeHeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey! I'm Sai!",
                  style: kHeadline1TextStyle.copyWith(color: kTextColorDark),
                ),
                SizedBox(height: 26.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.54,
                  child: Text(
                    "I'm a software engineer, app developer, and UI designer. I'm currently pursuing a major in Computer Science, Cognitive Science, and a minor in Technology and Information Management from the University of California, Santa Cruz.",
                    style: kBodyIntroTextStyle.copyWith(color: kText2ColorDark),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 50),
          CircleAvatar(
            backgroundImage: AssetImage('images/profile.jpg'),
            radius: MediaQuery.of(context).size.width * 0.12,
          ),
        ],
      ),
    );
  }
}
